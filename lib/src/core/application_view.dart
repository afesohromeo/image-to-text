import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core.dart';
import 'theme/app_theme.dart';

class ApplicationView extends StatelessWidget {
  const ApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'MyApp',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: Provider.of<RouteManager>(context, listen: false).router,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}
