part of 'home_bloc.dart';

enum HomeStatus { initial, loading, success, failure }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    //@Default(null) File? file,
    // @Default(false) bool? isConverting,
    // @Default('') String? convertedText,
    // @Default(false) bool? hasConverted,
    // @Default(HomeStatus.initial) HomeStatus status,
    // @Default(false) bool isDetecting,
    // @Default(false) bool isCameraReady,
    // @Default([]) List<CameraDescription> cameras
    required HomeStatus status,
    CameraController? controller,
    String? ocrText,
    String? errorMessage,
    @Default(false) bool? isDisposed,
    @Default(false) bool? canRetry,
  }) = _HomeState;
}
