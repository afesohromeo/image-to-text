import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_to_text/src/core/core.dart';
import 'package:image_to_text/src/features/authentication/logic/cubit/authentication_cubit.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        log('heyyy mann wohh');

        if (state.isAuthenticated) {
          log('heyyy mann');
          context.goNamed(homeRouteName);
        }
      },
      child: Scaffold(
          body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.lock_outline_rounded,
              color: AppColors.green2,
              size: 50,
            ),
            Center(
              child: Text('Application Locked',
                  style: AppTheme.lightTextTheme.displayMedium!),
            ),
            MaterialButton(
              child: Text(
                'Register',
                style: AppTheme.lightTextTheme.displayMedium!
                    .copyWith(fontSize: 20.0, color: AppColors.primary),
              ),
              onPressed: () async {
                context.read<AuthenticationCubit>().authenticate();
              },
            ),
            MaterialButton(
              child: Text(
                'Login',
                style: AppTheme.lightTextTheme.displayMedium!
                    .copyWith(fontSize: 20.0, color: AppColors.primary),
              ),
              onPressed: () async {
                context.read<AuthenticationCubit>().authenticate();
              },
            ),
          ],
        ),
      )),
    );
  }
}
