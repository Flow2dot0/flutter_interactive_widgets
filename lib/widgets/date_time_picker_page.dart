import 'package:flutter/material.dart';

import 'package:flutter_interactive_widgets/widgets/custom_text.dart';
import 'dart:async';

class DateTimePickerPage extends StatefulWidget {
  DateTimePickerPage({Key key}) : super(key: key);

  @override
  _DateTimePickerPageState createState() => _DateTimePickerPageState();
}

class _DateTimePickerPageState extends State<DateTimePickerPage> {

  TimeOfDay time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText("Le Date Time Picker", color: Colors.white,),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                onPressed: showTime,
                child: CustomText((time==null)? 'Appuyez-moi' : time.toString()),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<Null> showTime() async {
    TimeOfDay select = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now());
    if (select != null) {
      setState(() {
        time = select;
      });
    }
  }
}