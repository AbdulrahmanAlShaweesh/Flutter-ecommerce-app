// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/Constants/colors.dart';
import 'package:flutter_ecommerce_app/Features/Cubits/cubit/app_auth_cubit.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_button.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_horizontal_line.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_media_icons_widget.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_text_field.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/snap_bar_error.dart';
import 'package:flutter_ecommerce_app/Views/home_screen.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'login sreen';
  bool isShowPassword = true;
  TextEditingController emialController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  bool isLoading = false;
  bool isRemindMe = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppAuthCubit, AppAuthState>(
      listener: (context, state) {
        if (state is LoginLoadingState) {
          isLoading = true;
        } else if (state is LoginSucessState) {
          Navigator.pushNamed(context, ProductsHomeScreen.id);
        } else if (state is LoginErrorState) {
          showSnakBarErrorMeggase(
              context: context, errorMessage: state.errorMessage);
        }
      },
      builder: (context, state) => SafeArea(
        child: Scaffold(
          backgroundColor: kPrimaryColors,
          body: ModalProgressHUD(
            inAsyncCall: isLoading,
            child: Form(
              key: formKey,
              child: Center(
                child: SingleChildScrollView(
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
                            horizontal: 20.0,
                            vertical: 30.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 15.0,
                              ),
                              CustomTextFromFieldWidget(
                                controller: emialController,
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
                                controller: passwordController,
                                validate: (data) {
                                  if (data!.isEmpty) {
                                    return 'Field is required';
                                  } else if (data.length < 8) {
                                    return 'Passowrd is too short';
                                  }
                                  return null;
                                },
                                obscureText: isShowPassword,
                                visbleIcon: isShowPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                onPressed: () {
                                  isShowPassword = !isShowPassword;
                                },
                                icons: Icons.lock_outline,
                                hintText: 'Password',
                              ),
                              SizedBox(
                                height: 22.0,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 21,
                                    width: 21,
                                    margin: EdgeInsets.only(
                                      right: 10.0,
                                    ),
                                    // p/adding: EdgeInsets.all(7.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    child: isRemindMe
                                        ? Icon(
                                            Icons.check,
                                            size: 17,
                                            color: Colors.blue,
                                          )
                                        : null,
                                  ),
                                  Text(
                                    'Remind Me',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      letterSpacing: 0.8,
                                      color: Colors.grey.withOpacity(
                                        0.9,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                              CustomButton(
                                onTap: () {
                                  if (formKey.currentState!.validate()) {
                                    BlocProvider.of<AppAuthCubit>(context)
                                        .logninToAccount(
                                      email: emialController.text.trim(),
                                      password: passwordController.text.trim(),
                                    );
                                  }
                                },
                                text: 'Log In',
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: SizedBox.shrink(),
                                  ),
                                  Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.grey,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ],
                              )
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
                              'Don\'t have an account? ',
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
                                    width: 70,
                                    color: Colors.grey,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 25,
                                    child: Text(
                                      'Sign Up',
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
            ),
          ),
        ),
      ),
    );
  }
}
