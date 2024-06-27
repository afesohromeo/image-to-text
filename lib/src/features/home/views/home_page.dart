import 'dart:developer';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_to_text/src/core/core.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
// import 'package:firebase_ml_vision/firebase_ml_vision.dart';

import '../../features.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gas Pump Reader'),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.status == HomeStatus.failure) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.errorMessage!)));
          }
        },
        builder: (context, state) {
          if (state.status == HomeStatus.initial) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<HomeBloc>().add(const HomeEvent.launchCamera());
                },
                child: const Text('Open Camera'),
              ),
            );
          } else if (state.status == HomeStatus.success &&
              state.controller != null) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: CameraPreview(state.controller!),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(const HomeEvent.scan());
                    },
                    child: const Text('Start Scanning'),
                  ),
                ),
                if (state.ocrText != null)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      state.ocrText!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20.0),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      context
                          .read<HomeBloc>()
                          .add(const HomeEvent.disposeCamera());
                    },
                    child: const Text('Close Camera'),
                  ),
                ),
              ],
            );
          } else if (state.status == HomeStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(state.errorMessage!),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(const HomeEvent.scan());
                    },
                    child: const Text('Retry'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      context
                          .read<HomeBloc>()
                          .add(const HomeEvent.launchCamera());
                    },
                    child: const Text('Rescan'),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  // void updateProfilePic(BuildContext context) {
  //   showModalBottomSheet(
  //     constraints: const BoxConstraints(maxHeight: 110),
  //     context: context,
  //     builder: (context) {
  //       return selectPickerType(context);
  //     },
  //     backgroundColor: AppColors.grey5.withOpacity(.9),
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //           topLeft: Radius.circular(20), topRight: Radius.circular(20)),
  //     ),
  //     elevation: 20,
  //     clipBehavior: Clip.antiAliasWithSaveLayer,
  //   );
  // }

  // Widget selectPickerType(BuildContext context) {
  //   return Column(
  //     children: [
  //       selectPickerListTile(Icons.image_rounded, 'Select from gallery',
  //           () async {
  //         final File? pickedFile = await pickImage(ImageSource.gallery);

  //         if (pickedFile != null) {
  //           if (context.mounted) {
  //             context.read<ImageCubit>().upload(pickedFile);
  //             context.pop();
  //           }
  //         } else {
  //           return;
  //         }
  //       }),
  //       selectPickerListTile(Icons.camera_alt_rounded, 'Take a photo',
  //           () async {
  //         final File? pickedFile = await pickImage(ImageSource.camera);

  //         if (pickedFile != null) {
  //           if (context.mounted) {
  //             context.read<ImageCubit>().upload(pickedFile);
  //             context.pop();
  //           }
  //         } else {
  //           return;
  //         }
  //       }),
  //     ],
  //   );
  // }

  Widget selectPickerListTile(
      IconData tileIcon, String tileText, VoidCallback onTap) {
    return SizedBox(
      height: 50,
      child: ListTile(
          horizontalTitleGap: 0,
          iconColor: AppColors.grey2,
          leading: Icon(
            tileIcon,
            size: 22,
          ),
          title: Text(
            tileText,
            style: AppTheme.lightTextTheme.bodyLarge!.copyWith(
                color: AppColors.black1,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          onTap: onTap),
    );
  }

  Future<File?> pickImage(ImageSource imageSource) async {
    var file = await ImagePicker().pickImage(
      source: imageSource,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    return File(file!.path);
  }
}
