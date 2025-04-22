import 'package:flutter/material.dart';
import 'package:flutter_praktikum_1/detail_screen.dart';
import 'package:flutter_praktikum_1/done_tourism_list.dart';
import 'package:flutter_praktikum_1/list_item.dart';
import 'package:flutter_praktikum_1/model/tourism_place.dart';
import 'package:flutter_praktikum_1/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  State<TourismList> createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/monkasel_main.jpg',
    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/images/klenteng.png',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/images/sampoerna.jpg',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/images/pahlawan.jpeg',
    ),
    TourismPlace(
      name: 'Patung SuroBoyo',
      location: 'Monokromo',
      imageAsset: 'assets/images/sby.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider doneTourismProvider, child) {
              return ListItem(
                place: place,
                isDone:
                    doneTourismProvider.doneTourismProvider.contains(place),
                onCheckboxClick: (bool? value) {
                  doneTourismProvider.complete(place, value!);
                },
              );
            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
