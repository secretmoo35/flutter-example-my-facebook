import 'package:flutter/material.dart';
import 'package:my_facebook/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage()));
}
