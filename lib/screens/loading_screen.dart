import 'dart:convert';

import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as Http;

const API_KEY = 'd4014527e8e9740ff469cfaaa9ce8759';
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double lat;
  double lon;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    lat = location.latitude;
    lon = location.longitude;

    NetworkHelper networkHelper = NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$API_KEY');
    var weatherData = await networkHelper.getData();

  }

  @override
  Widget build(BuildContext context) {
//    getData();
    return Scaffold();
  }
}
