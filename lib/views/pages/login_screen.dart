import 'package:flutter/material.dart';
import 'package:nss/constants/app_colors.dart';
import 'package:nss/constants/app_images.dart';
import 'package:nss/views/widgets/buttons.dart';
import 'package:nss/views/widgets/inputs.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom:MediaQuery.of(context).size.height * 0.07),
              color: Colors.transparent,
              height: MediaQuery.of(context).size.height * .5,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 120, child: Image.asset(AppImages.logo)),
                  const Text("NATIONAL SERVICE SCHEME",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 3),
                  const Text(
                    "Technical Cell, Kerala",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .07,
                  ),
                  const Text("Welcome",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          letterSpacing: 1,
                          color: AppColors.primary,
                          fontSize: 25,
                          fontWeight: FontWeight.w700))
                ],
              ),
            ),
            Container(
              padding:const EdgeInsets.all(10),
              decoration: const BoxDecoration(

                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                color: AppColors.primary,
              ),
              height: MediaQuery.of(context).size.height * .5,
              width: double.infinity,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: AppColors.fontOnSecondary),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  Container(
                    child: Column(
                      children: [
                        EditableBox(
                          controller: phoneNumberController,
                          hint: 'Enter Your Phone number',
                          type: TextInputType.number,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .005,
                        ),
                        EditableBox(
                          controller: passwordController,
                          hint: 'Enter Your Password',
                          type: TextInputType.name,
                          isPassword: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .015,
                  ),
                  Container(
                    width: double.infinity,
                    child: ForgetButton(
                      onTap: () {
                        print("from login screen");
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  PrimaryButton(
                    buttonText: 'Login',
                    onTap: () {
                      print('login screen');
                    },
                    bgColor: AppColors.inputBackgroundColor,
                    textColor: AppColors.primary,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
