import 'package:flutter/material.dart';
import 'package:poo_tracker/features/auth/presentation/pages/login_screen.dart';

import 'package:poo_tracker/features/calender/presentation/pages/calender_page.dart';
import 'package:poo_tracker/features/daily_report/presentation/pages/daily_report.dart';
import 'package:poo_tracker/features/splash_screen/presentation/pages/splash_screen.dart';


void main()
{
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen()
    );
  }
}