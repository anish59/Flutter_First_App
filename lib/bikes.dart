import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bikes extends StatelessWidget {
  final List<String> bikes;
  final String bikeCompanyName;

  /*  // Bikes(this.bikes);
  Bikes(this.bikes) { // positional argument constructor
    print('[Bikes] constructor()');
  } */

  Bikes({this.bikes, this.bikeCompanyName = 'Cruise Bike'}) {
    // named argument constructor with default value in 2nd argument, but 1st argument doesnt have any default value
    print('[Bikes] constructor()');
  }

  @override
  Widget build(BuildContext context) {
    print('[Bikes] build()');
    return Column(
      children: bikes
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset(element),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Text(bikeCompanyName),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
