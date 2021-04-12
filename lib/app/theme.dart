import 'package:flutter/material.dart';
import 'package:portfolio/app/colors.dart';
import 'package:portfolio/app/configs.dart';

final lightTheme = (BuildContext context) => ThemeData(
    cardColor: surfaceColor,
    accentColor: Colors.tealAccent,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    fontFamily: SystemProperties.fontName,
    textTheme: Theme.of(context).textTheme.apply(
        bodyColor: textPrimaryColor, fontFamily: SystemProperties.fontName),
    iconTheme: IconThemeData(color: primaryColor));
