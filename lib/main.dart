import 'package:flutter/material.dart';
import 'home.dart';

//package letak folder Anda
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
    },
  ));
}
