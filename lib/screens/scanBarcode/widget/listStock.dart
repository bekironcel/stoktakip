import 'package:flutter/material.dart';

final List<String> entries = <String>['A', 'B', 'C'];
final List<int> size = <int>[36, 37, 38];

class listStock extends StatefulWidget {
  listStock({Key? key}) : super(key: key);

  @override
  State<listStock> createState() => _listStockState();
}

class _listStockState extends State<listStock> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            height: 50,
            child: Flexible(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "36",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "5 Çift",
                    )
                  ],
                ),
                Row()
              ],
            ))

            // Center(child: Text('${size[index]} Numara ${entries[index]}')),
            );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    ));
  }
}
