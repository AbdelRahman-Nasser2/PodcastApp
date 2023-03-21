import 'package:flutter/material.dart';
import 'package:podcastapp/layout/home_layoutscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Podcast app',
      debugShowCheckedModeBanner: false,
      home: HomeLayoutScreen(),
    );
  }
}
