import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(kMarginAllVal),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRad),
          color: colour,
        ),
      ),
    );
  }
}

// Immutability means unchangeable.  A perfect example are Flutter's stateless widgets
// Because we cannot change these widgets, when changes are made they must be destroyed in the scaffold
// and then re-rendered as a new widget

// final vs. const
// constants are immutable and cannot be assigned a value again as it is a compile time constant
// final can only be assigned a value once and never again
