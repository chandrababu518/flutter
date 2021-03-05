import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp(
      password: '123',
      userName: 'chandrababu',
    ));

class MyApp extends StatelessWidget {
  String userName, password;

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
            Text("this body is built using column widget"),
            RaisedButton(
                child: Text("this is 1st button"),
                onPressed: firstButtonPressed),
            RaisedButton(
                child: Text("this is 2nd button"), onPressed: () => {}),
            RaisedButton(
              child: Text("this is 3rd button"),
              onPressed: () {},
            ),
            Row(
              children: [Text('this is row inside the column')],
            ),
          ],
        ),
      ),
    );
  }

  void firstButtonPressed() {}

  MyApp(
      {String this.userName = 'default username', @required String password}) {
    this.password = password;
  }
}
