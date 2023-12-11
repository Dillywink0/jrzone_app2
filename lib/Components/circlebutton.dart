import 'package:flutter/material.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
    minimumSize: Size(100, 30),
    backgroundColor: Color.fromARGB(255, 72, 183, 38),
    elevation: 10,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
      Radius.circular(100),
    )));
