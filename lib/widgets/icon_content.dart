import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData cardIcon;
  final String cardLabel;

  IconContent({this.cardIcon, this.cardLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: kSpaceBetween,
        ),
        Text(
          cardLabel,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
