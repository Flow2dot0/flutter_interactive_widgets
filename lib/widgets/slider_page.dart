import 'package:flutter/material.dart';

import 'custom_text.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double slider = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText("Le Slider", color: Colors.white,),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText("Valeur du Slider ${slider}"),
              Slider(
                  value: slider,
                  min: 0.0,
                  max: 10.0,
                  inactiveColor: Colors.black,
                  activeColor: Colors.pink,
                  divisions: 5,
                  onChanged: (double d) {
                    setState(() {
                      slider = d;
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