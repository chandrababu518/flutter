import 'package:flutter/material.dart';
import 'package:flutter_app/text_info.dart';

import 'custom_button.dart';

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
  var buttonTExts = {"Red", "Green","Blue"};

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //return MaterialApp(home: Text('username: '+userName+' password: '+password),);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Container(width: double.infinity,
          margin: EdgeInsets.all(10),child: Column(
            children: [
              TextInfo(infoText),
              ...buttonTExts.map((data) { return CustomButton(data,firstButtonPressed);}).toList(),
            ],
          ),),
      ),
    );
  }

  void firstButtonPressed({String whichButton}) {
    setState(() {
      infoText = whichButton;
    });
  }


}
