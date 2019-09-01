import 'package:flutter/material.dart';

class CustomTextField extends TextField {

  CustomTextField(String labelText, Function onChanged, Function onSubmitted, {obscureText : false,  Function border, TextStyle labelStyle, TextInputType keyboardType,}):
      super(
        obscureText : obscureText,
        keyboardType : (keyboardType)?? TextInputType.text,
        onChanged : onChanged,
        onSubmitted : onSubmitted,
        decoration : InputDecoration(
          border : (border)?? OutlineInputBorder(),
          labelText: labelText,
          labelStyle: labelStyle,
        )
      );
}