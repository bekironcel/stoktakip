import 'package:flutter/material.dart';
import 'package:stoktakip/screens/home.dart';
import 'package:stoktakip/screens/scanBarcode/scanbarcode.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Home(),
      "/barcodeScan": (context) => Scanbarcode()
    },
  ));
}
