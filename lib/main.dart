import 'package:flutter/material.dart';
import 'package:flutter_enum/enums/enums.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Enums(),
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff005c9a),
          brightness: Brightness.dark,
          surface: const Color(0xFF17202C),
          background: const Color(0xFF0E1215),
        ),
        useMaterial3: true,
      ),
    );
  }
}
