import 'package:flutter/material.dart';
import 'package:go_roting_example/pages/base_material_router.dart';
import 'package:go_router/go_router.dart';

import '../service/navigation_service.dart';
import '../utils/global.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 80,
          width: 80,
          child: CircularProgressIndicator(
            strokeWidth: 6,
          ),
        ),
      ),
    );
  }

  void navigate() async {
    loadNav();
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const BaseMaterial(),
        ),
      );
    }
  }

  void loadNav() async {
    GlobalUtensils.routes = await NavigationService().getpath();
  }
}
