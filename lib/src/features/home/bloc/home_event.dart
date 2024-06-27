part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.readTextFromImage(File? image) = _ReadTextFromImage;
  const factory HomeEvent.upload(File? image) = _Upload;

  const factory HomeEvent.initilize() = _Initialize;

  const factory HomeEvent.launchCamera() = _LaunchCamera;
  const factory HomeEvent.scan() = _Scan;
  const factory HomeEvent.disposeCamera() = _DisposeCamera;
}
