import 'package:flutter/material.dart';
import 'package:ui_caffe_app/caffee.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff100702),
        primarySwatch: Colors.brown,
      ),
      home: Coffee(),
    );
  }
}
