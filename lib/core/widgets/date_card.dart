import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/date_list.dart';
import 'package:poo_tracker/core/day_list.dart';
import 'package:poo_tracker/core/fonts.dart';

import 'package:dotted_border/dotted_border.dart';
import 'package:poo_tracker/core/poop_icons_list.dart';

class DateCard extends StatelessWidget {
  final int index;
  const DateCard({Key? key, required this.index});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(20.0),
      strokeWidth: 1,
      color: const Color(0xffE0E0E0),
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            children: [
              Text(
                dateList[index].toString(),
                style: customFont(
                  color: Color(0xff666666),
                  fontSize: 35,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                dayList[index],
                style: customFont(
                  color: Color(0xff999999),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 10),
              SvgPicture.asset(poopIconsList[index]),
            ],
          ),
        ),
      ),
    );
  }
}
