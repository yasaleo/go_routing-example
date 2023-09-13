import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/overlay_loading.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Home Page',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            TextButton(
              onPressed: () async {
                LoadingOverlay.of(context).show();
                await Future.delayed(const Duration(seconds: 3));
                if (!mounted) return;
                LoadingOverlay.of(context).hide();          
                context.go('/home/dashboard');
                // GoRouter.of(context).push('/dashboard');
              },
              child: const FittedBox(
                child: Text(
                  ' DashBoardPage',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
