import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


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
  }

  @override
  //Deactivate method is end of lifecycle of Stateless widget lifecycle
  //It is called when  stateless widget is destroyed
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }


  void getLocation() async {

    //Get latitude longitude position using this
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.lowest);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("Hello"),
        ),
      );
  }
}
