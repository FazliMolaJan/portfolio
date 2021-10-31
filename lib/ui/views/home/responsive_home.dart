import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/app/colors.dart';

import 'package:portfolio/core/utils/ScreenUiHelper.dart';

import 'widgets/rolling_animated_widget.dart';

class ResponsiveHomeView extends StatefulWidget {
  const ResponsiveHomeView({Key? key}) : super(key: key);

  @override
  State<ResponsiveHomeView> createState() => _ResponsiveHomeViewState();
}

class _ResponsiveHomeViewState extends State<ResponsiveHomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUiHelper screenUiHelper = ScreenUiHelper.fromContext(context);
    return Scaffold(
      backgroundColor: darkColor.backgroundColor,
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: RollingCircle(
                    child: FlutterLogo(),
                    height: 150,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: RollingCircle(
                    height: 250,
                    duration: 3000,
                    child: Icon(
                      FlutterIcons.globe_fea,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: RollingCircle(
                    height: 350,
                    duration: 4000,
                    child: Icon(
                      FlutterIcons.database_fea,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  RichText(
                      text: TextSpan(
                          text: "-",
                          style: TextStyle(
                            color: darkColor.textSecondaryColor,
                            fontSize: 14,
                            letterSpacing: 3,
                          ),
                          children: [
                        TextSpan(
                          text: " INTRODUCTION",
                        )
                      ])),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Mobile App & Web Developer, Aim to build pixel perfect.",
                    style: screenUiHelper.headline.copyWith(
                        color: darkColor.textPrimaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "This is my personal space where I'm trying to express my creativity. Always passionate about creating beautiful & useful things ✨",
                    style: screenUiHelper.body.copyWith(
                      color: darkColor.textPrimaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Got a Project?",
                            style: screenUiHelper.title.copyWith(
                                color: darkColor.textPrimaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: Text(
                                "Let's talk",
                                style: screenUiHelper.title.copyWith(
                                  color: darkColor.primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              label: Icon(
                                Icons.arrow_forward,
                                color: darkColor.primaryColor,
                                size: 20,
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
