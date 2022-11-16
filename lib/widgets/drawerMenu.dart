// ignore: file_names
import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        ListTile(
          leading: Icon(Icons.home),
          title: Text("AnaSayfa"),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            Navigator.pushNamed(context, "/");
          },
        ),
        ListTile(
          leading: Icon(Icons.camera),
          title: Text("Ürün Sorgula"),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            Navigator.pushNamed(context, "/barcodeScan");
          },
        ),
      ]),
    );
  }
}
