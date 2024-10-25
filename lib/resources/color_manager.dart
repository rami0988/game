import 'package:flutter/material.dart';



class ColorManager {
  //BASICS
  static Color white = const Color(0xffffffff);
  static Color offWhite = const Color.fromARGB(255, 245, 245, 245);
  static Color black = const Color(0xff000000);


  //PURPLE PALETTE
static Color blue1 = const Color(0xffcce7ff); // Lightest blue
static Color blue2 = const Color(0xffb3d9ff); 
static Color blue3 = const Color(0xff80bfff);
static const Color blue4 = Color(0xff4da6ff);
static Color blue5 = const Color(0xff3385cc);
static Color blue6 = const Color(0xff1a5a99);
static const Color blue7 = Color(0xff133d66); // Darkest blue
static Color blue0 = const Color(0xffe6f2ff); // Lightest background shade

  //LIGHT MODE
  static Color primary = blue4;
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#737477");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color primaryOpacity = blue3;

  //DARK MODE
  static Color darkPrimary = blue6;
  static Color grey1 = HexColor.fromHex("#707070");
  static Color grey2 = HexColor.fromHex("#797979");


  //STATUS
  static Color error = const Color(0xffe61f34);
  static Color success = const Color(0xff5cb85c);
  static Color pending = const Color(0xffffc14e);


}

extension HexColor on Color{
  static Color fromHex(String hexColorString){
    hexColorString = hexColorString.replaceAll('#', '');
    if(hexColorString.length ==6){
      hexColorString = "FF$hexColorString";
    }
    return Color(int.parse(hexColorString,radix: 16));
  }
}



////

enum ToastStates { SUCCESS, ERROR, WARNING }

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = ColorManager.success;
      break;
    case ToastStates.ERROR:
      color = ColorManager.error;
      break;
    case ToastStates.WARNING:
      color = ColorManager.pending;
      break;
  }
  return color;
}
