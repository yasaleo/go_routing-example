import 'package:flutter/material.dart';

import '../routing/router.dart';

class BaseMaterial extends StatefulWidget {
  const BaseMaterial({super.key});

  @override
  State<BaseMaterial> createState() => _BaseMaterialState();
}

class _BaseMaterialState extends State<BaseMaterial> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: CustomRouter.router,
    );
  }
}
