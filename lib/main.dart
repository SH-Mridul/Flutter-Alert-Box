// import 'package:MusicApp/pages/PageOne.dart';
// import 'package:MusicApp/pages/PageTwo.dart';
import 'dart:ui';

import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : HomePage()
  ));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar : AppBar(
          title:Text('Bottom Modal',style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
               onTap: (){
                  showDialog(context: context,builder:(context){
                    return AlertDialog(
                      backgroundColor: Colors.purple,
                      title: Text('Alert'),
                      content: Text('Flutter Alert Box'),
                      actions: <Widget>[
                        RaisedButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text('ok'),
                        )
                      ],
                    );
                  });
               },
                child: Icon(
                  Icons.add,
                  size: 26.0,
                ),
              )
            ),
          ],
        ),
        body: Container(
          child:Center(
            child : Text('For showing up a Alert Box click appbar plus icon.')
          ),
        ),
      )
    );
  }
}
