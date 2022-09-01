import 'package:flutter/material.dart';

class ColorsConstant {
  static Color vividPurple = const Color.fromRGBO(0x9b, 0x61, 0xe0, 1);
  static Color vividCyanBlue = const Color.fromRGBO(0x06, 0x93, 0xe3, 1);
  static Color paleCyanBlue = const Color.fromRGBO(0x8e, 0xd1, 0xfc, 1);
  static Color vividGreenCyan = const Color.fromRGBO(0x00, 0xd0, 0x84, 1);
  static Color lightGreenCyan = const Color.fromRGBO(0x7b, 0xdc, 0xb5, 1);
  static Color luminousVividAmber = const Color.fromRGBO(0xfc, 0xb9, 0x00, 1);
  static Color luminousVividOrange = const Color.fromRGBO(0xff, 0x69, 0x00, 1);
  static Color vividRed = const Color.fromRGBO(0xcf, 0x2e, 0x2e, 1);
  static Color black = const Color.fromRGBO(0x00, 0x00, 0x00, 1);
  static Color cyanBluishGray = const Color.fromRGBO(0xab, 0xb8, 0xc3, 1);
  static Color white = const Color.fromRGBO(0xff, 0xff, 0xff, 1);
  static Color palePink = const Color.fromRGBO(0xf7, 0x8d, 0xa7, 1);
  static Color veryLightGray = const Color.fromRGBO(238, 238, 238, 1);
}

class GradientConstants {
  static LinearGradient vividCyanBlueToVividPurple = LinearGradient(
    colors: [
      ColorsConstant.vividCyanBlue,
      ColorsConstant.vividPurple,
    ],
  );
  static LinearGradient lightGreenCyanToVividGreenCyan = LinearGradient(
    colors: [
      ColorsConstant.lightGreenCyan,
      ColorsConstant.vividGreenCyan,
    ],
  );
  static LinearGradient luminousVividAmberToluminousVividOrange =
      LinearGradient(
    colors: [
      ColorsConstant.luminousVividAmber,
      ColorsConstant.luminousVividOrange,
    ],
  );
  static LinearGradient luminousVividOrangeToVividRed = LinearGradient(
    colors: [
      ColorsConstant.luminousVividOrange,
      ColorsConstant.vividRed,
    ],
  );
  static LinearGradient veryLightGrayToCyanBluishGray = LinearGradient(
    colors: [
      ColorsConstant.veryLightGray,
      ColorsConstant.cyanBluishGray,
    ],
  );
  static LinearGradient coolToWarmSpectrum = const LinearGradient(
    colors: [
      Color.fromRGBO(74, 234, 220, 1),
      Color.fromRGBO(151, 120, 209, 1),
      Color.fromRGBO(207, 42, 186, 1),
      Color.fromRGBO(238, 44, 130, 1),
      Color.fromRGBO(251, 105, 98, 1),
      Color.fromRGBO(254, 248, 76, 1),
    ],
  );

  static LinearGradient blushLightPurple = const LinearGradient(
    colors: [
      Color.fromRGBO(255, 206, 236, 1),
      Color.fromRGBO(152, 150, 240, 1),
    ],
  );
  static LinearGradient blushBordeaux = const LinearGradient(
    colors: [
      Color.fromRGBO(254, 205, 165, 1),
      Color.fromRGBO(254, 45, 45, 1),
      Color.fromRGBO(107, 0, 62, 1),
    ],
  );
  static LinearGradient luminousDusk = const LinearGradient(
    colors: [
      Color.fromRGBO(255, 203, 112, 1),
      Color.fromRGBO(199, 81, 192, 1),
      Color.fromRGBO(65, 88, 208, 1),
    ],
  );
  static LinearGradient paleOcean = const LinearGradient(
    colors: [
      Color.fromRGBO(255, 245, 203, 1),
      Color.fromRGBO(182, 227, 212, 1),
      Color.fromRGBO(51, 167, 181, 1),
    ],
  );
  static LinearGradient electricGrass = const LinearGradient(
    colors: [
      Color.fromRGBO(202, 248, 128, 1),
      Color.fromRGBO(113, 206, 126, 1),
    ],
  );
  static LinearGradient midnight = const LinearGradient(
    colors: [
      Color.fromRGBO(2, 3, 129, 1),
      Color.fromRGBO(40, 116, 252, 1),
    ],
  );
}

class FontSizeConstants {
  static double small = 13;
  static double medium = 20;
  static double large = 36;
  static double xLarge = 42;
}
