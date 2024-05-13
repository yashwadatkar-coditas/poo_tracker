import 'package:flutter/material.dart';
import 'package:poo_tracker/core/colors_list.dart';

class CircularColorWidget extends StatelessWidget {
  final int selectedColorl;
  final int index;
  const CircularColorWidget({super.key, required this.selectedColorl, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
  width: 50,
  height: 50,
  decoration: BoxDecoration(
     color: selectedColorl == index ? Colors.white : colorsList[index],
    border: Border.all(width: 2, color: colorsList[index]),
    shape: BoxShape.circle,
  ),
  child: Center(
    child: FractionallySizedBox(
      heightFactor: selectedColorl == index ? 0.9 : 0, // Adjust those two for the white space
      widthFactor: selectedColorl == index ? 0.9 : 0,
      child: Container(
        decoration:  BoxDecoration(
          color: colorsList[index],
          shape: BoxShape.circle,
        ),
      ),
    ),
  ),
);
;
  }
}