import 'package:flutter/material.dart';
import 'package:flutter_server_driven/share/theme/colors.dart';

class AppTextTheme {

  static String  inter = 'inter';
  static String  robotoCondensed = 'robotoCondensed';

  static TextStyle  displayLargeTextStyle = TextStyle(
        fontSize: 48,
        letterSpacing: 0,
        fontWeight: FontWeight.w300,
        overflow: TextOverflow.ellipsis,
        fontFamily: inter,
        color: Colors.black,
      );

  static TextStyle  displayMediumTextStyle = TextStyle(
        fontSize: 36,
        letterSpacing: 0,
        fontWeight: FontWeight.w300,
        overflow: TextOverflow.ellipsis,
        fontFamily: inter,
    color: Colors.black,

  );

  static TextStyle  displaySmallTextStyle = TextStyle(
        fontSize: 24,
        letterSpacing: 0,
        fontWeight: FontWeight.w300,
        overflow: TextOverflow.ellipsis,
        fontFamily: inter,
    color: Colors.black,

  );

  // HEADLINE TEXT STYLES
  static TextStyle  headlineLargeTextStyle = TextStyle(
        fontSize: 30,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.ellipsis,
        fontFamily: inter,
    color: Colors.black,

  );

  static TextStyle  headlineMediumTextStyle = TextStyle(
        fontSize: 24,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.ellipsis,
        fontFamily: inter,
    color: Colors.black,

  );

  static TextStyle  headlineSmallTextStyle = TextStyle(
        fontSize: 18,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.ellipsis,
        fontFamily: inter,
    color: Colors.black,

  );

  // TITLE TEXT STYLES
  static TextStyle  titleLargeTextStyle = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        overflow: TextOverflow.ellipsis,
        fontFamily: inter,
    color: Colors.black,

  );
  static  TextStyle  titleMediumTextStyle = TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        overflow: TextOverflow.ellipsis,
        fontFamily: inter,
    color: Colors.black,

  );
  static  TextStyle  titleSmallTextStyle = TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        overflow: TextOverflow.ellipsis,
        fontFamily: inter,
    color: Colors.black,

  );

  // LABEL TEXT STYLES
  static TextStyle  labelLargeTextStyle = TextStyle(
        fontSize: 16,
        fontFamily: inter,
        fontWeight: FontWeight.bold,
        letterSpacing: 0,
        overflow: TextOverflow.ellipsis,
    color: Colors.black,
      );
  static TextStyle  labelMediumTextStyle = TextStyle(
        fontSize: 12,
        fontFamily: inter,
        fontWeight: FontWeight.bold,
        letterSpacing: 0,
        overflow: TextOverflow.ellipsis,
    color: Colors.black,
      );
  static TextStyle  labelSmallTextStyle = TextStyle(
        fontSize: 10,
        fontFamily: robotoCondensed,
        fontWeight: FontWeight.bold,
        letterSpacing: 0,
        overflow: TextOverflow.ellipsis,
    color: Colors.black,
      );

  // BODY TEXT STYLES
  static TextStyle  bodyLargeTextStyle = TextStyle(
        fontSize: 14,
        fontFamily: inter,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.none,
        letterSpacing: 0,
        overflow: TextOverflow.ellipsis,
    color: Colors.black,
      );
  static  TextStyle  bodyMediumTextStyle = TextStyle(
        fontSize: 12,
        fontFamily: inter,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.none,
        letterSpacing: 0,
        overflow: TextOverflow.ellipsis,
    color: Colors.black,
      );
  static TextStyle  bodySmallTextStyle = TextStyle(
        fontSize: 10,
        fontFamily: robotoCondensed,
        fontWeight: FontWeight.normal,
        letterSpacing: 0,
        overflow: TextOverflow.ellipsis,
    color: Colors.black,
      );

  static  TextStyle  errorTextStyle = TextStyle(
        fontSize: 12,
        overflow: TextOverflow.ellipsis,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        fontFamily: inter,
    color: Colors.black,

  );
}
