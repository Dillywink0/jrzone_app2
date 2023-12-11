import 'package:flutter/material.dart';
import 'package:jrzone_app2/page/PrivateHire.dart';
import 'package:jrzone_app2/page/jolloytots_page.dart';
import 'package:jrzone_app2/page/lazerstorm.dart';
import '../Components/circlebutton.dart';
import '../page/parties_page.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        ElevatedButton(
          style: buttonPrimary,
          child: Text(
            'Parties',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Partiespage()));
          },
        ),
        SizedBox(height: 16),
        ElevatedButton(
          style: buttonPrimary,
          child: Text(
            'Private Hires',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PrivateHires()));
          },
        ),
        SizedBox(height: 16),
        ElevatedButton(
          style: buttonPrimary,
          child: Text(
            'Lazer Storms',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LazerStormPage()));
          },
        ),
        SizedBox(height: 16),
        ElevatedButton(
          style: buttonPrimary,
          child: Text(
            'Jolly Tots',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => JollyTotsPage()));
          },
        ),
      ],
    ));
  }
}
