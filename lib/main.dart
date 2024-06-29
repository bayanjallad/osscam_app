import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'config/bloc_observice.dart';
import 'view/create_join_Page.dart';
import 'view/error_page.dart';
import 'view/OfflinePage.dart';
import 'view/login_page.dart';
import 'feature/auth/view/singup_page.dart';

void main() {
   Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          //InternetPage(),
          SignupPage(),

         // LoginPage(),
           //CreateAndJoinPage(),
          // ErroePage(),
          // OfflinePage(),
    );
  }
}
