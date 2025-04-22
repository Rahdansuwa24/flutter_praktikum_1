import 'package:flutter/material.dart';
import 'package:flutter_praktikum_1/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(place.imageAsset),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              // Bagian informasi ikon
              Container(
                margin: const EdgeInsets.symmetric(vertical: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Icon(Icons.calendar_today, size: 30),
                        SizedBox(height: 5),
                        Text('Open Everyday'),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(Icons.access_time, size: 30),
                        SizedBox(height: 5),
                        Text('08:00 - 16:00'),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(Icons.attach_money, size: 30),
                        SizedBox(height: 5),
                        Text('Rp 10.000,-'),
                      ],
                    ),
                  ],
                ),
              ),
              // Deskripsi tempat
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak 333 di pusat kota yaitu di Jalan Pemuda, tepat di sebelah Plaza Surabaya, dan terdapat pintu akses untuk mengakses mal dari dalam monumen.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              // Bagian ListView untuk gambar tambahan
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none, // Mencegah pemotongan gambar
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ClipRRect(
                          // padding: const EdgeInsets.all(4.0),
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ClipRRect(
                          // padding: const EdgeInsets.all(4.0),
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset('assets/images/monka_1.jpg'),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('assets/images/monka_2.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('assets/images/monka_3.jpeg'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
