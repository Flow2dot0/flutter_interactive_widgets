import 'package:flutter/material.dart';
import 'package:flutter_interactive_widgets/widgets/custom_text.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {

  int selectedItem;
  List<String> radioList = [
    "Pikachu",
    "Rondoudou",
    "Dracofeu",
    "Tortank"
  ];

  List<Widget> radiosCreator(List<String> radioList) {
    var length = radioList.length;
    List<Widget> l = [];
    for(int x = 0; x < length ; x++) {
      Row row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomText("Choix ${radioList[x]}"),
          Radio(
              value: x,
              groupValue: selectedItem,
              onChanged: (int i) {
                setState(() {
                  selectedItem = i;
                });
              }
          )
        ],
      );
      l.add(row);
    }
    return l;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText("Les Radios", color: Colors.white,),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: radiosCreator(radioList),
          ),
        ),
      ),
    );
  }
}