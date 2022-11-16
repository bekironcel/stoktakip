import 'package:flutter/material.dart';

class floatingButton extends StatelessWidget {
  const floatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => {},
      child: PopupMenuButton<String>(itemBuilder: (BuildContext context){
        return {'Turizm Cadde', 'Avm Mağaza', 'İnternet Mağaza'}.map((String choice){
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },),
      
      backgroundColor: Colors.blue,
    );
  }
}
