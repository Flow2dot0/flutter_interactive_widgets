import 'package:flutter/material.dart';
import 'package:flutter_interactive_widgets/widgets/custom_text.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {

  Map check = {
    "Poulet" : false,
    "Dinde" : false,
    "Agneau" : false,
    "Truite" : false,
    "Porc" : false,
  };

  List<Widget> checkBoxCreator() {
    List<Widget> l = [];
    check.forEach((key, value) {
      Row row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomText(key, color: (value)? Colors.green : Colors.red,),
          Checkbox(
              value: value,
              onChanged: (bool b) {
                setState(() {
                  check[key] = b;
                });
              },
          )
        ],
      );
      l.add(row);
    });
    return l;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: CustomText("La CheckBox", color: Colors.white,),
        ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: checkBoxCreator(),
          ),
        ),
      ),
    );
  }

}