import 'package:flutter/material.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/features/log/presentation/pages/log_timer_start.dart';

class QuadButton extends StatelessWidget {
  const QuadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LogTimerStart())),
      child: Container(
        height: 80,
        width: 100,
        decoration: const BoxDecoration(
          color: greenColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0),topLeft: Radius.circular(100))
        ),
        child:const  Column(
          
          children: [
            SizedBox(height: 35,),
            Row(
           
              children: [
                SizedBox(width: 50),
               Icon(Icons.add,size: 30,color: Colors.white,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}