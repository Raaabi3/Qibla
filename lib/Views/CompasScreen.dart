import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'dart:math';

class Compasscreen extends StatefulWidget {
  const Compasscreen({super.key});

  @override
  State<Compasscreen> createState() => _CompasscreenState();
}

class _CompasscreenState extends State<Compasscreen> {
  MagnetometerEvent _magneticEvent = MagnetometerEvent(0, 0, 0 , DateTime.now());
  StreamSubscription? subscription ;
  @override
  void initState(){
    super.initState();
    subscription = magnetometerEvents.listen((event) {
      setState((){
_magneticEvent = event;
      });
    });
  }

  @override
  void dispose(){
    subscription?.cancel();
    super.dispose();
  }

  double calculateDegrees(double x, double y){
    double heading = atan2(x , y);
    heading = heading * 180 / pi ;
    if (heading > 0 ){
      heading -= 360;
    }
    return heading * -1;
  }



  @override
  Widget build(BuildContext context) {
    final degrees = calculateDegrees(_magneticEvent.x, _magneticEvent.y);
    final angle = -1 * pi / 180 * degrees;
    return Scaffold(body: Container(
      child: Text("the degree is :${degrees.toStringAsFixed(0)} °"),

    ));
  }
}
