import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/text_info.dart';

class MainBody extends StatefulWidget{
  Function buttonPressed;
  var infoText ;
  MainBody(Function this.buttonPressed,this.infoText);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GetBodyWidget();
  }

}
class GetBodyWidget extends State<MainBody>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        TextInfo(widget.infoText),
        RaisedButton(
            child: Text("this is 1st button"),
            onPressed: widget.buttonPressed),
        RaisedButton(
            child: Text("this is 2nd button"), onPressed: () =>widget.buttonPressed(whichButton: "2nd button pressed") ),
        RaisedButton(
          child: Text("this is 3rd button"),
          onPressed: ()=>
              widget.buttonPressed(whichButton: "3rd button pressed"),
        ),
        Row(
          children: [Text('this is row inside the column')],
        ),
      ],
    );
  }

}