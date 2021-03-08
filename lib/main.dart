import 'package:flutter/material.dart';
import 'package:flutter_app/text_info.dart';
import 'package:flutter_app/main_body.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }

}
class MyAppState extends State<MyApp>{

  var infoText = "this body is built using column widget";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //return MaterialApp(home: Text('username: '+userName+' password: '+password),);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: MainBody(firstButtonPressed,infoText),
      ),
    );
  }

  void firstButtonPressed({String whichButton}) {
    setState(() {
      infoText = whichButton==null?'default first button pressed':whichButton;
    });
  }


}
