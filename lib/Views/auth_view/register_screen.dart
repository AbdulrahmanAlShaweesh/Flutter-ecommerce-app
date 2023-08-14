// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable, empty_catches, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/Constants/colors.dart';
import 'package:flutter_ecommerce_app/Features/cubit/app_auth_cubit.dart';
import 'package:flutter_ecommerce_app/Features/cubit/login_hidden_password_cubit.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/snap_bar_error.dart';
import 'package:flutter_ecommerce_app/Views/auth_view/login_Screen.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_button.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_horizontal_line.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_media_icons_widget.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterScreen extends StatelessWidget {
  static String id = 'register sreen';
  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emialController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppAuthCubit, AppAuthState>(
      listener: (context, state) {
        if (state is RegisterLoadingState) {
          isLoading = true;
        } else if (state is RegisterSucesState) {
          Navigator.pushNamed(
            context,
            LoginScreen.id,
          );
          emialController.clear();
          usernameController.clear();
          passwordController.clear();
          isLoading = false;
        } else if (state is RegisterErrorState) {
          showSnakBarErrorMeggase(
            context: context,
            errorMessage: state.errorMessage,
          );
          isLoading = false;
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
                              horizontal: 20.0, vertical: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextFromFieldWidget(
                                controller: usernameController,
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
                              BlocConsumer<LoginHiddenPasswordCubit,
                                  HintPassword>(
                                listener: (context, state) {},
                                builder: (context, state) {
                                  var isShowPassword =
                                      BlocProvider.of<LoginHiddenPasswordCubit>(
                                          context);
                                  return CustomTextFromFieldWidget(
                                    controller: passwordController,
                                    validate: (data) {
                                      if (data!.isEmpty) {
                                        return 'enter your password';
                                      } else if (data.length < 8) {
                                        return 'Password is too short';
                                      }
                                      return null;
                                    },
                                    obscureText:
                                        isShowPassword.isShowRegisterPassword,
                                    onPressed: () {
                                      isShowPassword.showPassword(
                                        screenName: 'register',
                                      );
                                    },
                                    visbleIcon:
                                        isShowPassword.isShowRegisterPassword
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                    icons: Icons.lock_outline,
                                    hintText: 'Password',
                                  );
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                              CustomButton(
                                onTap: () async {
                                  if (formKey.currentState!.validate()) {
                                    BlocProvider.of<AppAuthCubit>(context)
                                        .createNewAccount(
                                      email: emialController.text.trim(),
                                      password: passwordController.text.trim(),
                                    );
                                  }
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
            ),
          ),
        ),
      ),
    );
  }
}
