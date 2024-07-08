// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:osscam_app/core/constants/color_palet.dart';
import 'package:osscam_app/core/constants/app_string.dart';
import 'package:osscam_app/core/constants/app_style.dart';
import 'package:osscam_app/feature/auth/view/singup_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;
  //! how can i change width and hight for circle when some one write his password
  double circleWidth = 70.0;
  double circleHeight = 8.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Column(
            children: [
              const Spacer(),
              Flexible(
                flex: 4,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Container(
                      width: 288,
                      height: 360,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: mainRegistrationInterfaceColor),
                      child: Column(
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 50, top: 30),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                EMAIL,
                                style: emailStyle,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 40, left: 40),
                            child: TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: praimaryColor,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: EXAMPLEGMAIL,
                                  hintStyle: hintTextStyle),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                PASSWORD,
                                style: emailStyle,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 40, left: 40),
                            child: TextFormField(
                              controller: passwordController,
                              obscureText: !isPasswordVisible,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: praimaryColor,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: ENTERYOURPASSOWRD,
                                  hintStyle: hintTextStyle,
                                  suffixIcon: GestureDetector(
                                    child: SizedBox(
                                      // width: circleWidth,
                                      // height: circleHeight,
                                      child: Icon(
                                        isPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: checkBoxColor,
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 50, left: 50, bottom: 30),
                            child: Row(
                              children: [
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: checkBoxColor),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    REMEMBERME,
                                    style: emailStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                    width: 283,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: buttomColor),
                    child: Center(
                      child: Text(
                        LOGIN,
                        style: textButtomStyle,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        DONOTHAVEANACCOUNT,
                        style: checkTextStyle,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignupPage(),
                        ));
                      },
                      child: Text(
                        SIGNUP,
                        style: signcheckTextStyle,
                      ),
                    ),
                    const Spacer()
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                color: buttomColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: praimaryColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset("images/face.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
