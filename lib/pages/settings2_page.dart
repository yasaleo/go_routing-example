import 'package:flutter/material.dart';

class SettingsPage2 extends StatefulWidget {
  const SettingsPage2({super.key});

  @override
  State<SettingsPage2> createState() => _SettingsPage2State();
}

class _SettingsPage2State extends State<SettingsPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('About Page'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Settings 2',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            // FloatingActionButton(
            //   onPressed: () {
            //     // context.go('/');
            //     // GoRouter.of(context).push('/');
            //   },
            //   child: const FittedBox(
            //     child: Text(
            //       ' go to Home Page',
            //       style: TextStyle(
            //         fontSize: 25,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
