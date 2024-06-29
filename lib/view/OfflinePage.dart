import 'package:flutter/material.dart';

import 'package:osscam_app/core/res/color/color_palet.dart';
import 'package:osscam_app/core/res/style/app_string.dart';

import '../core/res/style/app_style.dart';

class OfflinePage extends StatelessWidget {
  const OfflinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Center(
        child: Column(
          children: [
           
            const Spacer(flex: 2),
            Flexible(flex: 4,child: Image.asset("images/nointernet.png")),
            Flexible(
              child: Padding(padding: const EdgeInsets.only(top: 60),
                child: Text(
                  NOINTERNET,
                  style: errorTextStyle,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
