import 'dart:nativewrappers/_internal/vm/lib/mirrors_patch.dart';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return buildclass();

  }
}
class buildclass extends State<MyApp>{
  @override
  List<String>colors=["red","blue","pink","black","white"];
  String? SelectedItemPoub;
  String? SelectItemdrop;
  Color x=Colors.red.shade100;

  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: x,
          title: Text("Popub menue button"),
          actions: [
            PopupMenuButton(
                itemBuilder: (context){
                  return colors.map((item){
                    return PopupMenuItem(child: Text(item),
                    value: item,);

                  }

                  ).toList();
                },
              onSelected: (Nvalue){
                  SelectedItemPoub=Nvalue;
                  setState(() {
                    switch(Nvalue){
                      case "red":
                        x=Colors.red;
                        break;
                      case "blue":
                        x=Colors.blue;
                        break;
                      case "pink":
                        x=Colors.pink;
                        break;
                      case "black":
                        x=Colors.black;
                        break;
                      case "white":
                        x=Colors.white;
                        break;



                    }
                  });
              },
            )

          ],
        ),
        body:

        DropdownButton(
          items: colors.map((item){
            return DropdownMenuItem(child: Text(item),
            value: item,);
          }).toList(),
          onChanged: (nValue){
            setState(() {
              SelectItemdrop=nValue;
              switch(SelectItemdrop){
                case "red":
                  x=Colors.red;
                  break;
                case "pink":
                  x=Colors.pink;
                  break;
                case "black":
                  x=Colors.black;
                  break;


              }
            });

          },value: SelectItemdrop,
        ),
      ),

    );
  }
}