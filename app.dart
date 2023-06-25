import 'package:flutter/material.dart';
import 'widgets/stackWidget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sneha C",
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg_img.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: StackWidget(),
          ),
        ),
      ),
    );
  }
}
