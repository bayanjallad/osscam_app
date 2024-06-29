import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osscam_app/core/res/color/color_palet.dart';
import 'package:osscam_app/core/res/style/app_string.dart';
import 'package:osscam_app/core/res/style/app_style.dart';
import 'package:osscam_app/model/signup_model.dart';

import '../bloc/auth_bloc.dart';


class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = true;
  //! how can i change width and hight for circle when some one write his password
  double circleWidth = 70.0;
  double circleHeight = 8.0;
  @override

  //! 
  // BlocListener<AuthBloc, AuthState>(
  //     bloc: BlocProvider.of<AuthBloc>(context),
  //     listener: (context, state) {
  //     if (state is SuccessInSignup) {
  //       Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAndJoinPage(),));
        
  //     }
  //     },
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: backGroundColor,
            body: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Column(
                  children: [
                    const Spacer(),
                    Flexible(
                      flex: 6,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: Container(
                            width: 288,
                            height: 483,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: mainRegistrationInterfaceColor),
                            child: Form(
                              child: Column(
                                children: [
                                  //const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 50, top: 70),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        FIRSTNAME,
                                        style: emailStyle,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 40, left: 40),
                                    child: TextFormField(
                                      controller: firstNameController,
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: praimaryColor,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          hintText: EXAMPLE,
                                          hintStyle: hintTextStyle),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 50, top: 10),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        LASTNAME,
                                        style: emailStyle,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 40, left: 40),
                                    child: TextFormField(
                                      controller: lastNameController,
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: praimaryColor,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          hintText: EXAMPLE,
                                          hintStyle: hintTextStyle),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
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
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 50,
                                        left: 50,
                                        bottom: 10,
                                        top: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: checkBoxColor),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
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
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: InkWell(
                          onTap: () {
                            context.read<AuthBloc>().add(
                                  Signup(
                                    user: UserModel(
                                        firstName: firstNameController.text,
                                        lastName: lastNameController.text,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        role: "USER"),
                                  ),
                                );
                          },
                          child: Container(
                            width: 283,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: buttomColor),
                            child: Center(
                              child: BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  if (state is AuthInitial) {
                                    return Text(
                                      SIGNUP,
                                      style: textButtomStyle,
                                    );
                                    
                                  }else if(state is ErrorInSignup){
                                    return const Text("there is an Error");
                                  }else if(state is SuccessInSignup){
                                    return Text(
                                      SIGNUP,
                                      style: textButtomStyle,
                                    );
                                  }else {return const SizedBox();}
                                },
                              ),
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
                          Text(
                            LOGIN,
                            style: signcheckTextStyle,
                          ),
                          const Spacer()
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
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
        },
      ),
    );
  }
}
