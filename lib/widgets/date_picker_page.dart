import 'package:flutter/material.dart';
import 'package:flutter_interactive_widgets/widgets/custom_text.dart';
import 'dart:async';

class DatePickerPage extends StatefulWidget {
  DatePickerPage({Key key}) : super(key: key);

  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {

  DateTime date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText("Le Date Picker", color: Colors.white,),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                  onPressed: showDate,
                  child: CustomText((date==null)? 'Appuyez-moi' : date.toString()),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<Null> showDate() async {
    DateTime select = await showDatePicker(
        context: context,
        initialDatePickerMode: DatePickerMode.year,
        initialDate: DateTime.now(),
        firstDate: DateTime(1988),
        lastDate: DateTime(2088));
    if(select != null) {
      setState(() {
        date = select;
      });
    }
  }
}