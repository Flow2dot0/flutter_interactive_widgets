import 'package:flutter/material.dart';

import 'custom_text.dart';

class SwitchPage extends StatefulWidget {
  SwitchPage({Key key}) : super(key: key);

  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {

  bool interruptor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText("Le Switch", color: Colors.white,),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText("Aimez-vous ?"),
              Switch(
                  value: interruptor,
                  inactiveTrackColor: Colors.red,
                  activeColor: Colors.green,
                  onChanged: (bool b){
                    setState(() {
                      interruptor = b;
                    });
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}