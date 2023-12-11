import 'package:flutter/material.dart';
import '../Components/circlebutton.dart';

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('FAQ Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.all(25),
          child: ElevatedButton(
            style: buttonPrimary,
            child: Text(
              'Entry Price',
              style: TextStyle(fontSize: 30.0),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.all(25),
          child: ElevatedButton(
            style: buttonPrimary,
            child: Text(
              'Opening Time',
              style: TextStyle(fontSize: 30.0),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.all(25),
          child: ElevatedButton(
            style: buttonPrimary,
            child: Text(
              'Location',
              style: TextStyle(fontSize: 30.0),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.all(25),
          child: ElevatedButton(
            style: buttonPrimary,
            child: Text(
              'Parking',
              style: TextStyle(fontSize: 30.0),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.all(25),
          child: ElevatedButton(
            style: buttonPrimary,
            child: Text(
              'Food and Drinks',
              style: TextStyle(fontSize: 30.0),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.all(25),
          child: ElevatedButton(
            style: buttonPrimary,
            child: Text(
              'Booking Terms',
              style: TextStyle(fontSize: 30.0),
            ),
            onPressed: () {},
          ),
        ),
      ])));
}
