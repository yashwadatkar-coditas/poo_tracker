import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poo_tracker/core/colors.dart';
import 'package:poo_tracker/core/fonts.dart';
import 'package:poo_tracker/core/widgets/custom_filled_button.dart';
import 'package:poo_tracker/core/widgets/custom_outlined_button.dart';
import 'package:poo_tracker/features/auth/presentation/pages/sign_up_screen.dart';
import 'package:poo_tracker/features/log/presentation/pages/create_log.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f7f9),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 270,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(flex: 399, child: SizedBox()),
                        Expanded(
                            flex: 727,
                            child: Text(
                              'Welcome\nBack',
                              style: customFont(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.transparent),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              const Expanded(flex: 626, child: SizedBox())
            ],
          ),
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
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(flex: 99, child: SizedBox()),
                Text(
                  'Welcome\nBack',
                  style: customFont(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: greenColor),
                ),
                const Expanded(flex: 68, child: SizedBox()),
                SvgPicture.asset('assets/icons/lock_icon.svg'),
                const Expanded(flex: 69, child: SizedBox()),
                Expanded(
                    flex: 40,
                    child: Text(
                      'Login',
                      style: customFont(
                          color: const Color(0xff666666),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    )),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text(
                    'Enter your email',
                    style: customFont(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff666666)),
                  )),
                ),
                const Expanded(flex: 40, child: SizedBox()),
                TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Color(0xffBDBDBD),
                      ),
                      label: Text(
                        'Enter your password',
                        style: customFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff666666)),
                      )),
                ),
                const Expanded(flex: 40, child: SizedBox()),
              CustomFilledButton(text: 'Login' , onpressed: () {
                  return Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateLog(),));
                },),
                const Expanded(flex: 40, child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot password',
                      style: GoogleFonts.roboto(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff999999)),
                    ),
                  ],
                ),
                const Expanded(flex: 40, child: SizedBox()),
               CustomOutLinedButton(text: 'Sign Up' , onpresses: () {
                 return Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),));
               },),
                const Expanded(flex: 104, child: SizedBox())
              ],
            ),
          )
        ],
      ),
    );
  }
}
