import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/fonts.dart';
import 'package:poo_tracker/features/log/presentation/pages/log_timer_stop.dart';

class LogTimerStart extends StatelessWidget {
  const LogTimerStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Stack(
        children: [
          SvgPicture.asset(
            // ignore: deprecated_member_use
            'assets/images/design_pattern.svg', color: const Color(0xff16b15d),
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
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(flex: 139, child: SizedBox()),
                Text(
                  'Create\nNew Log',
                  style: customFont(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                const Expanded(flex: 113, child: SizedBox()),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LogTimerStop(),));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Expanded(flex: 68, child: SizedBox()),
                          SvgPicture.asset('assets/icons/alarm_icon.svg'),
                          // const SizedBox(width: 19),
                          const Expanded(flex: 20, child: SizedBox()),
                          Text(
                            'Start now',
                            style: customFont(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: greenColor),
                          ),
                          const Expanded(flex: 67, child: SizedBox()),
                        ],
                      ),
                    )),
               const Expanded(flex: 30, child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'or',
                      style: customFont(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff80d4a7)),
                    ),
                  ],
                ),
                const Expanded(flex: 30, child: SizedBox()),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(greenColor),
                        side: MaterialStatePropertyAll(
                            BorderSide(color: Colors.white, width: 2))),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Expanded(flex: 65, child: SizedBox()),
                          SvgPicture.asset('assets/icons/reset_icon.svg'),
                          // const SizedBox(width: 19),
                          const Expanded(flex: 8, child: SizedBox()),
                          Text(
                            'Create old Log',
                            style: customFont(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          const Expanded(flex: 65, child: SizedBox()),
                        ],
                      ),
                    )),
                const Expanded(flex: 321, child: SizedBox()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
