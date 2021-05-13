import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Text('Web Samyush'),
    backgroundColor: Color(0xFFFFCDFE1),
    elevation: 4,
    shadowColor: Colors.amberAccent,
    // toolbarOpacity: 0.4,
    bottomOpacity: 0.2,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(20),
    )),
  );
}
