import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String userName;
  const ResultPage({required this.userName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: userName == "test" ? Text("Failed") : Text("Success"),
      ),
    );
  }
}
