import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/fonts.dart';
import 'package:poo_tracker/features/log/presentation/pages/create_log.dart';

class LogTimerStop extends StatelessWidget {
  const LogTimerStop({super.key});

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
                 const Expanded(flex: 90, child: SizedBox()),
                 Row(
                  children: [
                    SvgPicture.asset('assets/icons/alarm_icon.svg',color: Colors.white,width: 29,height: 35,),
                    const SizedBox(width: 12),
                    Text('10:20 am',style:customFont(fontSize: 30 , fontWeight: FontWeight.w400),)
                  ],
                 ),
                 const Expanded(flex: 10, child: SizedBox()),
                 Row(
                  children: [Flexible(child: Text('10:20:05',style: customFont(fontSize: 85 , fontWeight: FontWeight.w700),))],
                 ),

                   const Expanded(flex: 59, child: SizedBox()),
                   OutlinedButton(
                    style: const ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 20)),side: MaterialStatePropertyAll(BorderSide(color: Colors.white,width: 2))),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateLog()));
                    }, child: Center(child: Text('Done',style: customFont(fontSize: 25 , fontWeight: FontWeight.w700),),)),
                const Expanded(flex: 322, child: SizedBox()),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}