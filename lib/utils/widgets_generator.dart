import 'package:flutter/material.dart';

class WidgetGenerator {
  List<Widget> generate(int length) {
    return List.generate(
      length,
      (i) {
        List<Widget> _wid = [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 18,
              width: 20,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 18,
              width: 20,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(
            height: 15,
            child: LinearProgressIndicator(),
          ),
          const Text(
            "Somematerr",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ];
        _wid.shuffle();

        return SafeArea(
          child: Column(
            children: [
              Text('number $i'),
              ..._wid,
            ],
          ),
        );
      },
    );
  }
}
