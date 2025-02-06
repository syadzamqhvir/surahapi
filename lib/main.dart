import 'package:flutter/material.dart';
import 'PostPage/surah_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Rest API',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const SurahListScreen(),
    );
  }
}
