import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_theme/core/constants/colors.dart';


const appbarThemeLight = AppBarTheme(
  elevation: 0.0,
  backgroundColor: white,
  systemOverlayStyle: SystemUiOverlayStyle.dark,
);
const appbarThemeDark = AppBarTheme(
  elevation: 0.0,
  backgroundColor: blackBg,
  systemOverlayStyle: SystemUiOverlayStyle.light,
);

const sliderTheme = SliderThemeData(
  showValueIndicator: ShowValueIndicator.always,
  rangeValueIndicatorShape: RectangularRangeSliderValueIndicatorShape(),
  valueIndicatorColor: white,
  valueIndicatorTextStyle: TextStyle(color: black),
);






















const robotoRegular = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
);

const robotoMedium = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

const robotoBold = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
);

const robotoBlack = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w900,
);

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white,
  backgroundColor: primaryColor,
  elevation: 2,
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
  ),
);

const Gradient footerOverlayGradient = LinearGradient(
  begin: Alignment(0.51436, 1.07565),
  end: Alignment(0.51436, -0.03208),
  stops: [
    0,
    0.17571,
    1,
  ],
  colors: [
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 8, 8, 8),
    Color.fromARGB(105, 45, 45, 45),
  ],
);

const Gradient fullScreenOverGradient = LinearGradient(
  begin: Alignment(0.51436, 1.07565),
  end: Alignment(0.51436, -0.03208),
  stops: [
    0,
    0.25098,
    1,
  ],
  colors: [
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 17, 17, 17),
    Color.fromARGB(105, 45, 45, 45),
  ],
);

const RoundedRectangleBorder modalBottomSheetShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(34), topRight: Radius.circular(34)),
);

const BoxDecoration modalBottomSheetBoxDecoration = BoxDecoration(
    color: Color(0xFFE5E5E5),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(34), topRight: Radius.circular(34)),
    boxShadow: []);
