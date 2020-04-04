import 'package:flutter/material.dart';
import '../constants.dart';

class BottomBar extends StatelessWidget {
  final Color colour;
  final double height;
  final String barLabel;
  final Function onTap;

  BottomBar(
      {@required this.colour,
      @required this.height,
      @required this.barLabel,
      @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(barLabel, style: kLargeButtonTextStyle)),
        color: colour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: height,
      ),
    );
  }
}
