import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('About Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'About Page',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                // context.go('/');
                GoRouter.of(context).push('/settingss');
              },
              child: const FittedBox(
                child: Text(
                  ' go to Home Page',
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
