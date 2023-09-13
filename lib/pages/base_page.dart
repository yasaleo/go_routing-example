import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  BasePage({super.key,required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('app $title'),
      ),
      body: const Column(
        children: [
          Center(
            child: Text("paggggeeeeee"),
          )
        ],
      ),
    );
  }
}
