import 'package:flutter/material.dart';
import 'package:stoktakip/widgets/drawerMenu.dart';

import 'package:stoktakip/widgets/floatingActionButton.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerMenu(),
        appBar: AppBar(
          title: Text("AnaSayfa"),
        ),
        floatingActionButton: floatingButton());
  }
}
