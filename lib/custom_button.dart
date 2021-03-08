import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  String e;
  Function buttonPressed;

  CustomButton(String this.e, Function this.buttonPressed);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return getButton();
  }
}

class getButton extends State<CustomButton> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
        color: getColor(widget.e),
        splashColor: Colors.white,child: Text(widget.e), onPressed:()=>{
      widget.buttonPressed(whichButton:widget.e)
    } );
  }

  getColor(String e) {
    switch (e) {
      case "Red":
        return Colors.red;
      case "Green":
        return Colors.green;
      case "Blue":
        return Colors.blue;
    }
  }
}
