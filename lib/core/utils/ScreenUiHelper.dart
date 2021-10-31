import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../app/colors.dart';
import '../../app/configs.dart';
import 'scaling.dart';

class ScreenUiHelper {
  late double width;
  late double height;

  late double blockSizeHorizontal;
  late double blockSizeVertical;

  ScalingHelper? scalingHelper;

  late TextStyle headline;
  late TextStyle title;
  late TextStyle body;
  late TextStyle? buttonStyle;

  double? headlineSize;
  double? titleSize;
  double? bodySize;

  Color? surfaceColor;
  Color? backgroundColor;
  Color? primaryColor;
  Color? textPrimaryColor;
  Color? textSecondaryColor;
  Color? dividerColor;

  NeumorphicTextStyle? headlineTextStyle;
  late NeumorphicTextStyle titleTextStyle;
  NeumorphicTextStyle? bodyTextStyle;
  NeumorphicTextStyle? buttonTextStyle;

  late SizedBox verticalSpaceLow;
  late SizedBox verticalSpaceMedium;
  late SizedBox verticalSpaceHigh;

  SizedBox? horizontalSpaceLow;
  SizedBox? horizontalSpaceMedium;
  SizedBox? horizontalSpaceHigh;

  ScreenUiHelper.fromContext(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    surfaceColor = (NeumorphicTheme.of(context)?.isUsingDark ?? false)
        ? darkColor.surfaceColor
        : lightColor.surfaceColor;
    backgroundColor = (NeumorphicTheme.of(context)?.isUsingDark ?? false)
        ? darkColor.backgroundColor
        : lightColor.backgroundColor;
    primaryColor = (NeumorphicTheme.of(context)?.isUsingDark ?? false)
        ? darkColor.primaryColor
        : lightColor.primaryColor;
    textPrimaryColor = (NeumorphicTheme.of(context)?.isUsingDark ?? false)
        ? darkColor.textPrimaryColor
        : lightColor.textPrimaryColor;
    textSecondaryColor = (NeumorphicTheme.of(context)?.isUsingDark ?? false)
        ? darkColor.textSecondaryColor
        : lightColor.textSecondaryColor;
    dividerColor = (NeumorphicTheme.of(context)?.isUsingDark ?? false)
        ? darkColor.dividerColor
        : lightColor.dividerColor;

    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    width = screenWidth;
    height = screenHeight;

    scalingHelper = ScalingHelper(width: screenWidth);

    headlineSize = getDeviceType(mediaQuery.size) == DeviceScreenType.desktop
        ? 43
        : getDeviceType(mediaQuery.size) == DeviceScreenType.tablet
            ? 34
            : screenWidth * 0.08;
    titleSize =
        getDeviceType(mediaQuery.size) == DeviceScreenType.desktop ? 20 : 18;
    bodySize = getDeviceType(mediaQuery.size) == DeviceScreenType.desktop
        ? 18
        : getDeviceType(mediaQuery.size) == DeviceScreenType.tablet
            ? 16
            : 14;

    headline = TextStyle(
        fontWeight: FontWeight.bold,
        color: textPrimaryColor,
        fontSize: headlineSize,
        decoration: TextDecoration.none,
        fontFamily: SystemProperties.titleFont);

    title = TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: titleSize,
        color: textPrimaryColor,
        decoration: TextDecoration.none,
        fontFamily: SystemProperties.titleFont);
    buttonStyle = TextStyle(
        fontFamily: SystemProperties.titleFont,
        decoration: TextDecoration.none,
        fontWeight: FontWeight.bold,
        color: textPrimaryColor,
        fontSize: bodySize);

    body = TextStyle(
        color: textSecondaryColor,
        fontWeight: FontWeight.w400,
        fontSize: bodySize,
        decoration: TextDecoration.none,
        fontFamily: SystemProperties.fontName);

    headlineTextStyle = NeumorphicTextStyle(
        fontWeight: FontWeight.bold,
        fontSize: headlineSize,
        decoration: TextDecoration.none,
        fontFamily: SystemProperties.titleFont);

    titleTextStyle = NeumorphicTextStyle(
        fontWeight: FontWeight.w600,
        fontSize: titleSize,
        decoration: TextDecoration.none,
        fontFamily: SystemProperties.titleFont);
    buttonTextStyle = NeumorphicTextStyle(
        fontFamily: SystemProperties.titleFont,
        decoration: TextDecoration.none,
        fontWeight: FontWeight.bold,
        fontSize: bodySize);

    bodyTextStyle = NeumorphicTextStyle(
        fontWeight: FontWeight.w400,
        fontSize: bodySize,
        decoration: TextDecoration.none,
        fontFamily: SystemProperties.fontName);

    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    verticalSpaceLow = SizedBox(
      height: blockSizeVertical * 1.5,
    );
    verticalSpaceMedium = SizedBox(
      height: blockSizeVertical * 4,
    );
    verticalSpaceHigh = SizedBox(
      height: blockSizeVertical * 6,
    );

    horizontalSpaceLow = SizedBox(
      width: blockSizeHorizontal * 1.5,
    );
    horizontalSpaceMedium = SizedBox(
      width: blockSizeHorizontal * 7,
    );
    horizontalSpaceHigh = SizedBox(
      width: blockSizeHorizontal * 11,
    );
  }
}
