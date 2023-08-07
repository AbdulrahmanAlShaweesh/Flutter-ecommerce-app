// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Constants/colors.dart';
import 'package:flutter_ecommerce_app/Screens/login_Screen.dart';
import 'package:flutter_ecommerce_app/Widgets/custom_button.dart';
import 'package:flutter_ecommerce_app/Widgets/custom_horizontal_line.dart';
import 'package:flutter_ecommerce_app/Widgets/custom_media_icons_widget.dart';
import 'package:flutter_ecommerce_app/Widgets/custom_text_field.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  static String id = 'register sreen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isShowPassword = false;
  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emialController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    emialController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColors,
        body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(5, 5),
                      blurRadius: 15.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: Color(0xFFffffff),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextFromFieldWidget(
                        validate: (data) {
                          if (data!.isEmpty) {
                            return 'enter username';
                          }
                          return null;
                        },
                        obscureText: false,
                        onPressed: () {},
                        icons: Icons.person_outline,
                        hintText: 'Username',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      CustomTextFromFieldWidget(
                        validate: (data) {
                          if (data!.isEmpty) {
                            return 'Field is required';
                          } else if (RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(data) !=
                              true) {
                            return 'invalid emial structues';
                          }
                          return null;
                        },
                        obscureText: false,
                        onPressed: () {},
                        icons: Icons.email_outlined,
                        hintText: 'Emial address',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      CustomTextFromFieldWidget(
                        validate: (data) {
                          if (data!.isEmpty) {
                            return 'enter your password';
                          } else if (data.length < 8) {
                            return 'Password is too short';
                          }
                          return null;
                        },
                        obscureText: isShowPassword,
                        onPressed: () {
                          setState(() {
                            isShowPassword = !isShowPassword;
                          });
                        },
                        visbleIcon: isShowPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        icons: Icons.lock_outline,
                        hintText: 'Password',
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      CustomButton(
                        onTap: () {
                          if (formKey.currentState!.validate()) {}
                        },
                        text: 'Sign Up',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 0.6,
                      ),
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          bottom: 1,
                          child: Container(
                            height: 2,
                            width: 50,
                            color: Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              LoginScreen.id,
                            );
                          },
                          child: Container(
                            height: 25,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18.0,
                                letterSpacing: 0.6,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomHorizontalLineWidget(),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomMediaIconsWidget(
                    iconPath: 'assets/google.svg',
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  CustomMediaIconsWidget(
                    iconPath: 'assets/facebook.svg',
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  CustomMediaIconsWidget(
                    iconPath: 'assets/apple.svg',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
