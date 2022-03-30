import 'package:PressAppeal/views/home.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());
const primaryColor = Colors.white;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Home(),
    );
  }
}
