

import 'package:flutter/material.dart';


class ColorPalette {

  static Color grey=Colors.grey;
  static Color black=Colors.black;
  static Color white=Colors.white;

  static Color blue = const Color(0xff017ab1);
  // static Color grey = Color(0xffDEDEDE);
  static Color yellow = const Color(0xffffb852);
  static Color red = const Color(0xffe95a5c);
  static Map<dynamic,Color> getColor ={
    0 : appThemeColor,
    1 : yellow,
    2 : orange,
    3 : red,
    4 : blue,
    "safe" : appThemeColor,
    "avoid" : red,
    "caution" : yellow,
    null : Colors.grey,
  };
  static Color primaryColor1 = Colors.black;
  // static Color primaryColor1 = Colors.white;
  static Color textColor = Colors.black54;
  static Color buttonTextColor = Colors.white;
  // Color(0xff000030);
  static Color border = const Color(0xFF7C67C0);
  static Color darkTheme = const Color(0xff000015);



  // static Color primaryColor3 = Color(0xffb6996d);
  static const MaterialColor appThemeColor = MaterialColor(
    0xFF4bc95e,
     <int, Color>{
      50: Color(0xFFf9f7fc),
      100: Color(0xFFeae8ed),
      200: Color(0xFFe4e1ed),
      300: Color(0xFFcfc7eb),
      400: Color(0xFFcfc7eb),
      500: Color(0xFFbfb6de),
      600: Color(0xFFb5a8e0),
      700: Color(0xFFa595de),
      800: Color(0xFF917dd4),
      900: Color(0xFF7C67C0),
    },
  );
  static const MaterialColor orange =  MaterialColor(
    0xFFf7a643,
     <int, Color>{
      50:  Color(0xFFfff9f2),
      100:  Color(0xFFfff6eb),
      200:  Color(0xFFffe8cc),
      300:  Color(0xFFffe8cc),
      400:  Color(0xFFffe8cc),
      500:  Color(0xFFffd5a1),
      600:  Color(0xFFffd5a1),
      700:  Color(0xFFffcd8f),
      800:  Color(0xFFffbe6e),
      900:  Color(0xFFf7a643),
    },
  );
  static Color dark = Colors.black;
  static Color light = Colors.white;
}
