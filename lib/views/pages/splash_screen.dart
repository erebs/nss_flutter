import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_images.dart';
import 'login_screen.dart';
import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    screenNavigation();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
          child: Stack(
            fit : StackFit.expand,
            children: [
              Flex(
                direction: Axis.vertical,
                children: [
                  Expanded(
                      child: Image.asset(
                          AppImages.bgPattern,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
              Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 120,
                          child: Image.asset(AppImages.logo)
                      ),

                      const Text(
                          "NATIONAL SERVICE SCHEME",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.fontOnSecondary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )),
                      SizedBox( height: 3),

                      const Text(
                          "Technical Cell, Kerala",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.fontOnSecondary,
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                          ))
                    ],
                  )
              ),
            ],
          )
      ),
    );
  }

  screenNavigation () async {

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = (prefs.getBool('is_logged_in') == null || prefs.getBool('is_logged_in') == false) ? false : true;

    Future.delayed(const Duration (seconds: 4),(){
      Get.off(()=>isLoggedIn ?  MainScreen() : const LoginScreen(),
          // Get.off(()=>isLoggedIn ? const LoginScreen() : const LoginScreen(),
          transition: Transition.native,
          duration: const Duration(microseconds: 1200));
    });

  }


}
