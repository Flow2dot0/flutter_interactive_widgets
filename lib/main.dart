import 'package:flutter/material.dart';
import 'package:flutter_interactive_widgets/widgets/custom_text.dart';
import 'package:flutter_interactive_widgets/widgets/date_picker_page.dart';
import 'package:flutter_interactive_widgets/widgets/date_time_picker_page.dart';
import 'package:flutter_interactive_widgets/widgets/radio_page.dart';
import 'package:flutter_interactive_widgets/widgets/slider_page.dart';
import 'package:flutter_interactive_widgets/widgets/text_field_page.dart';
import 'package:flutter_interactive_widgets/widgets/check_box_page.dart';
import 'package:flutter_interactive_widgets/widgets/switch_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Main(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText("Les widgets interactifs", color: Colors.white, weight: FontWeight.bold,),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TextFieldPage()));
                  },
                  child: Text("Go the TextField")
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CheckBoxPage()));
                  },
                  child: Text("Go the Checkbox")
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RadioPage()));
                  },
                  child: Text("Go the Radio")
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SwitchPage()));
                  },
                  child: Text("Go the Switch")
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SliderPage()));
                  },
                  child: Text("Go the Switch")
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DatePickerPage()));
                  },
                  child: Text("Go the Date Picker")
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DateTimePickerPage()));
                  },
                  child: Text("Go the Date Time Picker")
              ),
            ],
          ),
        ),
      ),
    );
  }
}

