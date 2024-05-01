import 'package:flutter/material.dart';
import 'package:quiz_tpm_123210078/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz TPM (123210078)',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 70, 216, 189),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
