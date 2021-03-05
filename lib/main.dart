import 'package:flutter/material.dart';

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
        body: Column(
          children: [
            Text(infoText),
            RaisedButton(
                child: Text("this is 1st button"),
                onPressed: firstButtonPressed),
            RaisedButton(
                child: Text("this is 2nd button"), onPressed: () =>firstButtonPressed(whichButton: "2nd button pressed") ),
            RaisedButton(
              child: Text("this is 3rd button"),
              onPressed: () {
                setState(() {
                  infoText = '3rd button pressed';
                });
              },
            ),
            Row(
              children: [Text('this is row inside the column')],
            ),
          ],
        ),
      ),
    );
  }

  void firstButtonPressed({String whichButton}) {
    setState(() {
      infoText = whichButton==null?'default first button pressed':whichButton;
    });
  }


}
