import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(const AuthenticationState.initial(false));
  final LocalAuthentication auth = LocalAuthentication();

  void authenticate() async {
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;

    if (canAuthenticateWithBiometrics) {
      try {
        final bool didAuthenticate = await auth.authenticate(
            localizedReason: 'Please authenticate to use the app',
            options: const AuthenticationOptions(biometricOnly: false));

        emit(state.copyWith(isAuthenticated: didAuthenticate));
      } catch (e) {
        log('e');
        emit(state.copyWith(isAuthenticated: false));
      }
    } else {
      emit(state.copyWith(isAuthenticated: false));
    }
  }
}
