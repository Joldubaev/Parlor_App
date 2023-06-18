import 'package:flutter/material.dart';
import 'app/app_main.dart';

void main() {
  runApp(const MyApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 3));
}
