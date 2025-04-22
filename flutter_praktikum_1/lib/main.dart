import 'package:flutter/material.dart';
import 'package:flutter_praktikum_1/main_screen.dart';
import 'package:flutter_praktikum_1/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Surabaya',
      theme: ThemeData(),
      home: MainScreen(),
      ),
    );
  }
}
