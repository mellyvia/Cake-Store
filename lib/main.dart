import 'package:flutter/material.dart';
import 'package:proyekakhir_dicoding_mellyvia/main_page.dart';
import 'package:proyekakhir_dicoding_mellyvia/landing_page.dart';
import 'package:proyekakhir_dicoding_mellyvia/form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Proyek Akhir Mellyvia",
      home: LandingPage(),
    );
  }
}
