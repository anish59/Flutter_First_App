import 'package:first_app/bike_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp()); // perfect way

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness:Brightness.dark,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurpleAccent
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    // calling bike manager
                    BikeManager('assets/bike.jpg')
                  ],
                ),
              ),
            ],
          )),
    );

    /// vaibhav]
  }
}
