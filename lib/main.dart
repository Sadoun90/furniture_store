import 'package:flutter/material.dart';
import 'package:furniture_store/view/Shopping_view.dart';
import 'package:furniture_store/view/log_in.dart';
import 'package:furniture_store/view/sign_up.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    );
  }
}
