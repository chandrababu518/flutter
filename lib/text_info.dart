import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget{
  String infoText;
  var customColor=Colors.white;
  TextInfo(String this.infoText,);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(height: 40,child:Text(infoText, style: TextStyle(color: getColor(),),textAlign: TextAlign.center,) ,);
  }

  getColor() {

    if(infoText.contains("Green"))
    return Colors.green;
    if(infoText.contains("Blue"))
    return Colors.blue;

    return Colors.red;

  }
}
