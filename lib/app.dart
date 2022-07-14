import 'package:flutter/material.dart';
import 'package:future/screens/future_screen_view.dart';

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureScreenView(),
    );
  }
}
