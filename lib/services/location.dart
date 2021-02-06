// Moving all the location related logic to this file

import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class Location {

  double latitude;
  double longitude;

  Future getCurrentLocation() async {

    //Get latitude longitude position using this
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.lowest);
      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch(e){
      print(e);
    }
  }

}