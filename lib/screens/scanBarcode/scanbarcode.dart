import 'package:flutter/material.dart';
import 'package:stoktakip/screens/scanBarcode/widget/dropdownMenu.dart';
import 'package:stoktakip/screens/scanBarcode/widget/listStock.dart';
import 'package:stoktakip/widgets/drawerMenu.dart';
import 'package:stoktakip/widgets/floatingActionButton.dart';

class Scanbarcode extends StatefulWidget {
  Scanbarcode({Key? key}) : super(key: key);

  @override
  State<Scanbarcode> createState() => _ScanbarcodeState();
}

class _ScanbarcodeState extends State<Scanbarcode> {
  @override
  Widget build(BuildContext context) {
    const List<String> _shopList = <String>['One', 'Two', 'Three', 'Four'];
    return Scaffold(
        drawer: DrawerMenu(),
        appBar: AppBar(
          title: Text("Ürün Sorgula"),
        ),
        floatingActionButton: floatingButton(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 30, top: 10),
                  child: Text(
                    "Depo İsmi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                dropdownMenu()
              ],
            ),
            Row(
              children: [listStock()],
            )
          ],
        ));
  }
}
