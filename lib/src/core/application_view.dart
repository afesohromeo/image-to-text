import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core.dart';

class ApplicationView extends StatelessWidget {
  const ApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'MyApp',
      routerConfig: Provider.of<RouteManager>(context, listen: false).router
      
    );
  }
}