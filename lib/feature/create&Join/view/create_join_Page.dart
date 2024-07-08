// ignore_for_file: unnecessary_import, file_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:osscam_app/core/constants/color_palet.dart';

import '../../../core/constants/app_string.dart';
import '../../../core/constants/app_style.dart';
import '../../create_project/view/create_project.dart';

class CreateAndJoinPage extends StatelessWidget {
  const CreateAndJoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Center(
        child: Column(
          children: [
            Image.asset("images/osscamlogo.png"),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) =>createProject() ,));
                },
                  child: Container(
                    width: 283,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: buttomColor),
                    child: Center(
                      child: Text(
                        CREATE,
                        style: textButtomStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
