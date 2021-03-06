import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart' as Geocoding;
import 'package:location/location.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import './static_map.dart';

class LocationInput extends StatelessWidget {
  final flats;
  final itemScrollController;
  LocationInput(this.flats, this.itemScrollController);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(
              width: 1,
              color: Colors.grey,
            )),
            child: StaticMap(flats,itemScrollController)),
      ],
    );
  }
}
