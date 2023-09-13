import 'package:flutter/material.dart';

class DashBoardPage2 extends StatefulWidget {
  const DashBoardPage2({super.key});

  @override
  State<DashBoardPage2> createState() => _DashBoardPage2State();
}

class _DashBoardPage2State extends State<DashBoardPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('DashBoard 2 Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'DashBoard Page 2',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const FittedBox(
                child: Text(
                  'back',
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
