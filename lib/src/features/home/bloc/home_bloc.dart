import 'dart:core';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
part 'home_event.dart';
part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late CameraController _controller;
  final TextRecognizer _textRecognizer = TextRecognizer();

  late List<CameraDescription> _cameras;
  final ObjectDetector _objectDetector = ObjectDetector(
    options: ObjectDetectorOptions(
      classifyObjects: true,
      multipleObjects: true,
      mode: DetectionMode.single,
    ),
  );

  HomeBloc() : super(const HomeState(status: HomeStatus.initial)) {
    // on<_ReadTextFromImage>(_readTextFromImage);

    // on<_Upload>(_upload);
    on<_Initialize>(_initialize);
    on<_LaunchCamera>(_launchCamera);
    on<_DisposeCamera>(_onDisposeCamera);

    on<_Scan>(_scan);
  }
  @override
  Future<void> close() {
    _controller.dispose();
    _textRecognizer.close();
    return super.close();
  }

  // void _readTextFromImage(
  //     _ReadTextFromImage event, Emitter<HomeState> emit) async {
  //   emit(state.copyWith(file: state.file, isConverting: true));
  //   try {
  //     final inputImage = InputImage.fromFile(event.image!);
  //     final textRecognizer =
  //         TextRecognizer(script: TextRecognitionScript.latin);
  //     final RecognizedText recognizedText =
  //         await textRecognizer.processImage(inputImage);
  //     String text = recognizedText.text;

  //     textRecognizer.close();
  //     emit(state.copyWith(
  //         file: state.file,
  //         isConverting: false,
  //         hasConverted: true,
  //         convertedText: text));
  //   } catch (e) {
  //     emit(state.copyWith(
  //         file: state.file, hasConverted: false, isConverting: false));
  //   }

  //   // Process the extracted text as required (e.g., display in a dialog).
  // }

  // void _upload(_Upload event, Emitter<HomeState> emit) async {
  //   emit(state.copyWith(
  //       file: event.image, isConverting: false, hasConverted: false));
  // }

  void _initialize(_Initialize event, Emitter<HomeState> emit) async {
    try {
      _cameras = await availableCameras();

      _controller = CameraController(_cameras.first, ResolutionPreset.medium)
        ..setFlashMode(FlashMode.off);

      emit(state.copyWith(controller: _controller));
      log(' damm camera again ${state.controller == null}');
    } catch (e) {
      log(' damm camera again error $e, ${state.controller == null}');
      emit(state.copyWith(
          status: HomeStatus.failure,
          errorMessage: 'Error initializing camera'));
    }
  }

  void _launchCamera(_LaunchCamera event, Emitter<HomeState> emit) async {
    try {
      log('message ${state.controller == null}, ${_controller.value.isInitialized}');

      state.isDisposed!
          ? () {
              _controller =
                  CameraController(_cameras.first, ResolutionPreset.medium)
                    ..setFlashMode(FlashMode.off);
            }()
          : null;

      await _controller.initialize();

      log('message 5 ${state.controller == null}');
      emit(state.copyWith(
          status: HomeStatus.success,
          controller: _controller,
          isDisposed: false,
          ocrText: null));
    } catch (e) {
      log('message error $e');
    }
  }

  Future<void> _scan(_Scan event, Emitter<HomeState> emit) async {
    if (state.status != HomeStatus.success && !state.canRetry!) return;
    final CameraController controller = state.controller!;
    String detectedLogo = '';
    // final InputImageRotation rotation = InputImageRotationValue.fromRawValue(
    //         controller.description.sensorOrientation) ??
    //     InputImageRotation.rotation0deg;
    emit(state.copyWith(status: HomeStatus.loading, ocrText: null));

    try {
      controller.setFlashMode(FlashMode.off);
      final pictureFile = await controller.takePicture();

      final file = File(pictureFile.path);

      final inputImage = InputImage.fromFile(file);

      final List<DetectedObject> objects =
          await _objectDetector.processImage(inputImage);

      DetectedObject? bottle;
      if (objects.isEmpty) {
        emit(state.copyWith(
            status: HomeStatus.failure, errorMessage: 'object not detected'));
        return;
      }

      // Log the detected objects

      for (final object in objects) {
        log('pump nth ${objects.length}');
        log('Detected object: ${object.trackingId}, ${object.boundingBox}, ${object.boundingBox.height}, ${object.boundingBox.width}');
        if (_isObjectLikelybottle(object)) {
          bottle = object;
          // Check for the 'OLA' logo and positional elements
          final TextRecognizer textRecognizer = TextRecognizer();
          final recognizedText = await textRecognizer.processImage(inputImage);
          // Positional checks within the gas pump bounding box
          bool hasSupermontLogo = false;

          bool hasVitaleLogo = false;
          bool hasTanguiLogo = false;

          bool hasOpurLogo = false;

          // bool hasKeypad = false;
          // bool hasScreenAboveKeypad = false;
          // bool hasCumulativeScreen = false;

          for (var block in recognizedText.blocks) {
            log('block test ');
            final rect = block.boundingBox;
            if (bottle.boundingBox.contains(rect.topLeft) &&
                bottle.boundingBox.contains(rect.bottomRight)) {
              log('block test bottles,  ${block.text.toLowerCase()}');
              if (!hasSupermontLogo &&
                  isApproximatelyEqual(block.text, 'supermont')) {
                hasSupermontLogo = true;
                detectedLogo = 'Supermont';
                log('block test supermont ');
                break;
              }
              if (!hasTanguiLogo &&
                  isApproximatelyEqual(block.text, 'tangui')) {
                hasTanguiLogo = true;
                detectedLogo = 'Tangui';
                log('block test  tangui');
                break;
              }
              if (!hasVitaleLogo &&
                  isApproximatelyEqual(block.text, 'vitale')) {
                hasVitaleLogo = true;
                detectedLogo = 'Vitale';
                log('block vitale ');
                break;
              }
              if (!hasOpurLogo && isApproximatelyEqual(block.text, 'opur')) {
                hasOpurLogo = true;
                detectedLogo = 'Opur';
                log('block opur ');
                break;
              }
            }
          }
          // If all features are present, break and proceed
          if (hasTanguiLogo ||
              hasVitaleLogo ||
              hasSupermontLogo ||
              hasOpurLogo) {
            break;
          } else {
            bottle = null; // Reset gas pump if criteria not met
          }
        }
      }
      if (bottle == null) {
        log('pump not found');

        emit(state.copyWith(
            status: HomeStatus.failure,
            errorMessage: 'bottle not detected',
            canRetry: true));
        return;
      }

      if (emit.isDone) return;

      emit(state.copyWith(status: HomeStatus.success, ocrText: detectedLogo));
    } catch (e) {
      log('Error processing image: $e');
      if (!emit.isDone) {
        emit(state.copyWith(
            status: HomeStatus.failure,
            errorMessage: 'Error processing image',
            canRetry: true));
      }
    }
  }

  bool _isObjectLikelybottle(DetectedObject object) {
    log('check bottle');

    // Gas pump dimensions and criteria
    const double pumpHeight = 610.0; // Assuming height in pixels for the image
    const double pumpWidth = 184.0; // Assuming width in pixels for the image
    // const double maxScanHeight_ = pumpHeight * 0.25; // Top 25% of pump's height
    // maxScanHeight = maxScanHeight_;

    final double objectHeight = object.boundingBox.height;
    final double objectWidth = object.boundingBox.width;

    // Check if the object dimensions match the expected size range
    if (objectHeight < pumpHeight || objectWidth < pumpWidth) {
      log('message ${objectHeight < pumpHeight || objectWidth < pumpWidth}');
      return false;
    }

    // Check if the object's height to be scanned does not exceed the top 25%
    // if (objectHeight > maxScanHeight_) {
    //   return false;
    // }

    return true;
  }

  int levenshtein(String s1, String s2) {
    final int len1 = s1.length;
    final int len2 = s2.length;
    List<List<int>> d =
        List.generate(len1 + 1, (i) => List<int>.generate(len2 + 1, (j) => 0));

    for (int i = 0; i <= len1; i++) d[i][0] = i;
    for (int j = 0; j <= len2; j++) d[0][j] = j;

    for (int i = 1; i <= len1; i++) {
      for (int j = 1; j <= len2; j++) {
        int cost = s1[i - 1] == s2[j - 1] ? 0 : 1;
        d[i][j] = [
          d[i - 1][j] + 1, // Deletion
          d[i][j - 1] + 1, // Insertion
          d[i - 1][j - 1] + cost // Substitution
        ].reduce((a, b) => a < b ? a : b);
      }
    }

    return d[len1][len2];
  }

  bool containsOlaWithTolerance(String text, String target,
      {int tolerance = 1}) {
    return levenshtein(text.toLowerCase(), target.toLowerCase()) <= tolerance;
  }

  bool isApproximatelyEqual(String detected, String target,
      {double threshold = 0.7}) {
    // Convert both strings to lowercase for case-insensitive comparison
    detected = detected.toLowerCase();
    target = target.toLowerCase();

    // Create bigrams for both the detected and target strings
    List<String> detectedBigrams = _createBigrams(detected);
    List<String> targetBigrams = _createBigrams(target);

    log('bigram $detectedBigrams $targetBigrams');

    // Calculate the similarity score
    int matches = 0;
    for (var bigram in targetBigrams) {
      if (detectedBigrams.contains(bigram)) {
        matches++;
      }
      log('matches $matches');
    }

    // Calculate the similarity ratio
    double similarity = matches / targetBigrams.length;

    return similarity >= threshold;
  }

  List<String> _createBigrams(String text) {
    List<String> bigrams = [];
    for (int i = 0; i < text.length - 1; i++) {
      bigrams.add(text.substring(i, i + 2));
    }
    return bigrams;
  }

  Future<void> _onDisposeCamera(
      _DisposeCamera event, Emitter<HomeState> emit) async {
    try {
      await _controller.dispose();
      await _objectDetector.close();
      await _textRecognizer.close();

      emit(state.copyWith(
          status: HomeStatus.initial,
          controller: _controller,
          ocrText: null,
          isDisposed: true));
    } catch (e) {
      emit(state.copyWith(
          status: HomeStatus.failure,
          errorMessage: 'Error disposing camera',
          canRetry: true,
          ocrText: null));
    }
  }
}
