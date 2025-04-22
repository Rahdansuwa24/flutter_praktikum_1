import 'package:flutter/foundation.dart';
import 'package:flutter_praktikum_1/model/tourism_place.dart';

class DoneTourismProvider extends ChangeNotifier {
  final List<TourismPlace> _doneTourismPlaceList = [];

  var doneTourismPlaceList;

  List<TourismPlace> get doneTourismProvider => _doneTourismPlaceList;

  void complete(TourismPlace place, bool isDone) {
    isDone
        ? _doneTourismPlaceList.add(place)
        : _doneTourismPlaceList.remove(place);

    notifyListeners();
  }
}
