import 'package:flutter/material.dart';

import 'package:osscam_app/core/res/color/color_palet.dart';
import 'package:osscam_app/core/res/style/app_string.dart';

import '../core/res/style/app_style.dart';

class ErroePage extends StatelessWidget {
  const ErroePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 2),
            Flexible(flex: 2,
              child: Text(
                SOMETHING,
                style: errorTextStyle,
              ),
            ),
            Flexible(
              child: Text(
                WENTWRONG,
                style: errorTextStyle,
              ),
            ),
            Flexible(flex: 4,child: Image.asset("images/error.png")),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
