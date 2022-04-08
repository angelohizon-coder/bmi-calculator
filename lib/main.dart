import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFEDEDED),
      ),
      initialRoute: '/input_page',
      routes: {
        '/input_page': (context) => InputPage(),
        '/result_page': (context) => ResultPage(),
      },
    ),
  );
}
