import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:osscam_app/core/res/color/color_palet.dart';

import '../core/res/style/app_string.dart';
import '../core/res/style/app_style.dart';

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
          ],
        ),
      ),
    );
  }
}
