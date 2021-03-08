import 'package:flutter/cupertino.dart';

class TextInfo extends StatelessWidget{
  String infoText;
  TextInfo(String this.infoText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(infoText);
  }
}
