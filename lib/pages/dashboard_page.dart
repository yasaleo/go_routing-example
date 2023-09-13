import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('DashBoard Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'DashBoard Page',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            TextButton(
              onPressed: () {
                context.go('/home/dashboard/dashboard2');
                // GoRouter.of(context).push('/');
              },
              child: const FittedBox(
                child: Text(
                  ' go ',
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
