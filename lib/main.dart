import 'package:flutter/material.dart';
import 'package:joke_app/halaman_adaptive.dart';
import 'package:joke_app/halaman_listjoke.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Listjoke(),
    );
  }
}
