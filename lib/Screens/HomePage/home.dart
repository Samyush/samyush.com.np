import 'package:flutter/material.dart';
import 'package:samyush/Screens/appBar/appBars.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                boxShadow: [],
              ),
              // color: Colors.black12,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Color(0xFFD0AFC1),
            ),
          ),
        ],
      ),
    );
  }
}
