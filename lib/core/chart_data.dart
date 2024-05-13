import 'package:flutter/material.dart';


class chartData {
        chartData(this.x, this.y, [this.color]);
        final String x;
        final double y;
        final Color? color;
    }



    List<chartData> ChartData = [
            chartData('Type 1', 40 , Color(0xff1ab260)),
            chartData('Type 2', 30,Color(0xff3fbf7a)),
            chartData('Type 3', 20 , Color(0xff7ed3a5)),
            chartData('Type 4', 10 , Color(0xffb3e5ca)),
            
            ];
         

