import 'package:flutter/material.dart';

class NouvellePage extends StatelessWidget {
  NouvellePage(this.title);

  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text('Je suis une nouvelle page',
          textScaleFactor: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.teal,
            fontStyle: FontStyle.italic,
          )
        ),
      )
    );
  }

}