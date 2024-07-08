// ignore_for_file: unnecessary_import, unused_import

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:osscam_app/feature/auth/view/singup_page.dart';




import 'config/bloc_observice.dart';
import 'feature/create_project/view/create_project.dart';

late Box box;
void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  box = await Hive.openBox<String>("Token");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SignupPage()
      // SuccessCreateProject()
     // (box.get("accessToken")==null)? SignupPage():createProject()
    );
  }
}
