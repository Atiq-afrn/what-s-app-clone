import 'package:flutter/material.dart';
import 'package:whatsapp_clone/homescreen.dart';
import 'package:whatsapp_clone/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const ScreenA(),
      initialRoute: ScreenA.id,
      routes: {ScreenB.id: (context) => const ScreenB()},
    );
  }
}
