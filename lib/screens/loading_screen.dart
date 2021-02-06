import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {



  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override

  //initstate is called when object is inserted into a tree
  //build method is called after init state
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  @override
  //Deactivate method is end of lifecycle of Stateless widget lifecycle
  //It is called when  stateless widget is destroyed
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  void getLocation(){
    Location myLocation = new Location();
    print(myLocation.longitude);
 }

 void getData() async {
   http.Response response = await http.get('https://www.apple.com');
   print(response.body);

 }

  @override
  Widget build(BuildContext context) {

    String myMargin = '10';
    dynamic purple = Colors.deepPurple;
    try {
      double myMarginAsDouble = double.parse(myMargin);

      return Scaffold(
        body: Container(
          color: purple,
          child: SpinKitDoubleBounce(
            color: Colors.white,
            size: 100,
          ),
        ),
      );
    }
    catch(e) {
      print("There is an Exception: $e");
      return Scaffold(
        body: Container(
          margin: EdgeInsets.all(40),
          color: purple,
        ),
      );

    }
  }
}
