import 'package:flutter/material.dart';
import 'package:flutter_interactive_widgets/widgets/custom_text.dart';
import 'package:flutter_interactive_widgets/widgets/custom_textField.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {

  String textOnChange;
  String textOnSubmit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: CustomText("Le TextField", color: Colors.white,),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            )
          ),
        ),
      )
    );
  }


  void textOnChanged(String string) {
    setState(() {
      textOnChange = string;
    });
  }

  void textOnSubmitted(String string) {
    setState(() {
      textOnSubmit = string;
    });
  }

  List<Widget> creator(String title, TextInputType type) {
    List<Widget> l = [];
    Column column = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CustomTextField(
          title,
              (string) => textOnChanged(string),
              (string) => textOnSubmitted(string),
          keyboardType: (type)?? TextInputType.text,
        ),
        CustomText((textOnChange==null)? "" : "Le texte changé est : $textOnChange", weight: FontWeight.bold, factor: 1.5,),
        CustomText((textOnSubmit==null)? "" : "Le texte soumis est : $textOnSubmit", style: FontStyle.italic, color: Colors.blueAccent,),
      ],
    );
    l.add(column);
  }

}