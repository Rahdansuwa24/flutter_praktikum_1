import 'package:flutter/material.dart';
import 'package:flutter_praktikum_1/done_tourism_list.dart';
import 'package:flutter_praktikum_1/model/tourism_list.dart';
import 'package:flutter_praktikum_1/model/tourism_place.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Surabaya'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DoneTourismList();
                  },
                ),
              );
            },
            icon: const Icon(Icons.done_outline),
          ),
        ],
      ),
      body: TourismList(),
    );
  }
}
