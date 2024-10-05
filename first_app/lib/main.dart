import 'package:flutter/material.dart';
import 'package:first_app/gradaint.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Gradaint(
          const [Colors.indigo, Colors.indigoAccent],
        ),
      ),
    ),
  );
}
