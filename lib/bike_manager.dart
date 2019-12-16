import 'package:first_app/bikes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BikeManager extends StatefulWidget {
  final String firstBike;
  BikeManager(this.firstBike) {
    print('[BikeManager] constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[BikeManager] createState()');
    return _BikeManagerState();
  }
}

class _BikeManagerState extends State<BikeManager> {
  bool _toggleName = false;
  List<String> _bikes = [];

  @override
  void initState() {
    // calls before build
    _bikes.add(widget.firstBike);
    print('[_BikeManagerState] initState()');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('[_BikeManagerState] build()');
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              print('[_BikeManagerState] setState()');
              if (_toggleName) {
                _bikes.add(
                    'assets/bike.jpg'); // Build will be called again on Button press as data is changed
              } else {
                _bikes.add(
                    'assets/harley.jpg'); // Build will be called again on Button press as data is changed
              }
              print(_bikes);
              _toggleName = !_toggleName;
            });
          },
          child: Text('tap'), // setting text for button
        ),
      ),

      // Bikes(_bikes) // for potional argument

      // Note: below is demonstration for calling of named argument, here position doesnt matter but name should be mention
      
      // Bikes(), // 1 way for named argument

      // Bikes(bikeCompanyName: 'Harley Davidson'),// 2nd way for named argument

      Bikes(
          bikeCompanyName: 'Harley Davidson',
          bikes: _bikes), // 3rd way for named argument,
      
    ]);
  }
}


//todo remaining from video 23: Understanding additional dart features