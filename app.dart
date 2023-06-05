import 'package:flutter/material.dart';
import 'widgets/stackWidget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sneha C",
      home: Scaffold(
        body: SafeArea(
          child: StackWidget(),
        ),
      ),
    );
  }
}
