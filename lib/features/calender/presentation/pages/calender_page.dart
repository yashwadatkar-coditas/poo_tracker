import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/fonts.dart';
import 'package:poo_tracker/core/widgets/pop_up_widget.dart';
import 'package:poo_tracker/core/widgets/quad_button.dart';
import 'package:poo_tracker/features/calender/presentation/widgets/calender_widget.dart';


class CalenderPage extends StatelessWidget {
  void showPopUpDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const PopUpWidget();
      },
    );
  }
  const CalenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/images/design_pattern.svg',
            alignment: Alignment.topRight,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          SvgPicture.asset(
            'assets/images/design_pattern_two.svg',
            alignment: Alignment.bottomLeft,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              children: [
                const Expanded(flex: 50, child: SizedBox()),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_outlined,
                        color: greenColor,
                        size: 24,
                      ),
                    ),
                    const Expanded(flex: 16, child: SizedBox()),
                    Text(
                      'Calendar',
                      style: customFont(
                          color: greenColor,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    const Expanded(flex: 169, child: SizedBox()),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: const BoxDecoration(
                          color: Color(0xffEEA46B),
                          borderRadius: BorderRadius.all(Radius.circular(44))),
                    ),
                    const Expanded(flex: 20, child: SizedBox()),
                  ],
                ),
                const Expanded(flex: 54, child: SizedBox()),
                const CalendarWidget(),
                const Expanded(flex: 320, child: SizedBox()),
              ],
            ),
          ),
         const  Positioned(
            bottom: 0,
            right: 0,
            child: QuadButton())
        ],
      ),
    );
  }
}
