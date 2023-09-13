import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
            TextButton(
              onPressed: ()  {
                context.go('/about/settings');
                // GoRouter.of(context).push('/settings');
              },
              child: const FittedBox(
                child: Text(
                  ' go to settings',
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
