import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:amazon/theme/theme_manager.dart';
// import 'package:pinput/pinput.dart';

ThemeManager _themeManager = ThemeManager();


ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.indigo
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.indigoAccent
  ),
  scaffoldBackgroundColor: Colors.white,
  canvasColor: Colors.blue.shade300,
  primaryColor: Colors.indigo,
  secondaryHeaderColor: Colors.orangeAccent,
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFD0D5DD))),
    disabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFD0D5DD))),
    enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFD0D5DD))),
    helperStyle: GoogleFonts.ubuntu(color: Colors.indigoAccent),
    hintStyle: GoogleFonts.ubuntu(color: Color(0xFFD0D5DD))
    // outlineBorder: const BorderSide(color: Colors.indigo),
    // border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    // focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo)),
    // disabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo)),
    // enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo)),
    // helperStyle: GoogleFonts.ubuntu(color: Colors.indigo),
    // labelStyle: GoogleFonts.ubuntu(color: Colors.indigoAccent),
    // // hintStyle: GoogleFonts.ubuntu(color: Colors.indigoAccent),
    // errorStyle: GoogleFonts.ubuntu(color: Colors.indigo),
    // prefixIconColor: Colors.indigoAccent,
    // errorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF2F4EFF)),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.sp)
        )
      ),
      elevation: MaterialStateProperty.all(10),
      textStyle: MaterialStateProperty.all<TextStyle>(GoogleFonts.ubuntu()),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(horizontal: 20, vertical: 15)
      )
    )
  ),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.ubuntu(color: Colors.black),
    bodyMedium: GoogleFonts.ubuntu(color: Colors.black),
    bodySmall: GoogleFonts.ubuntu(color: Colors.black),
    displayLarge: GoogleFonts.ubuntu(color: Colors.black),
    displayMedium: GoogleFonts.ubuntu(color: Colors.black),
    displaySmall: GoogleFonts.ubuntu(color: Colors.black),
    headlineLarge: GoogleFonts.ubuntu(color: Colors.black),
    headlineMedium: GoogleFonts.ubuntu(color: Colors.black),
    headlineSmall: GoogleFonts.ubuntu(color: Colors.black),
    labelLarge: GoogleFonts.ubuntu(color: Colors.black),
    labelMedium: GoogleFonts.ubuntu(color: Colors.black),
    labelSmall: GoogleFonts.ubuntu(color: Colors.black),
    titleLarge: GoogleFonts.ubuntu(color: Colors.black),
    titleMedium: GoogleFonts.ubuntu(color: Colors.black),
    titleSmall: GoogleFonts.ubuntu(color: Colors.black),
    // bodyText1: GoogleFonts.ubuntu(color: Colors.black),
    // bodyText2: GoogleFonts.ubuntu(color: Colors.black),
    // caption: GoogleFonts.ubuntu(color: Colors.white),
    // button: GoogleFonts.ubuntu(color: Colors.black),
    // headline1: GoogleFonts.ubuntu(color: Colors.black),
    // headline2: GoogleFonts.ubuntu(color: Colors.black),
    // headline3: GoogleFonts.ubuntu(color: Colors.black),
    // headline4: GoogleFonts.ubuntu(color: Colors.black),
    // headline5: GoogleFonts.ubuntu(color: Colors.black),
    // headline6: GoogleFonts.ubuntu(color: Colors.black),
    // overline: GoogleFonts.ubuntu(color: Colors.black),
    // subtitle1: GoogleFonts.ubuntu(color: Colors.black),
    // subtitle2: GoogleFonts.ubuntu(color: Colors.black)
  ),
  focusColor: Colors.indigoAccent,
  cardColor: const Color.fromARGB(255, 255, 249, 230)
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.indigo
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.indigoAccent
  ),
  scaffoldBackgroundColor: Colors.white,
  canvasColor: const Color.fromARGB(136, 104, 104, 104),
  primaryColor: Colors.indigo,
  
  secondaryHeaderColor: Colors.orangeAccent,
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFD0D5DD))),
    disabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFD0D5DD))),
    enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFD0D5DD))),
    helperStyle: GoogleFonts.ubuntu(color: Colors.indigoAccent),
    hintStyle: GoogleFonts.ubuntu(color: const Color(0xFFD0D5DD)),
  ),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.ubuntu(color: Colors.black),
    bodyMedium: GoogleFonts.ubuntu(color: Colors.black),
    bodySmall: GoogleFonts.ubuntu(color: Colors.black),
    displayLarge: GoogleFonts.ubuntu(color: Colors.black),
    displayMedium: GoogleFonts.ubuntu(color: Colors.black),
    displaySmall: GoogleFonts.ubuntu(color: Colors.black),
    headlineLarge: GoogleFonts.ubuntu(color: Colors.black),
    headlineMedium: GoogleFonts.ubuntu(color: Colors.black),
    headlineSmall: GoogleFonts.ubuntu(color: Colors.black),
    labelLarge: GoogleFonts.ubuntu(color: Colors.black),
    labelMedium: GoogleFonts.ubuntu(color: Colors.black),
    labelSmall: GoogleFonts.ubuntu(color: Colors.black),
    titleLarge: GoogleFonts.ubuntu(color: Colors.black),
    titleMedium: GoogleFonts.ubuntu(color: Colors.black),
    titleSmall: GoogleFonts.ubuntu(color: Colors.black),
    // caption: GoogleFonts.ubuntu(color: Colors.white),
    // bodyText1: GoogleFonts.ubuntu(color: Colors.black),
    // bodyText2: GoogleFonts.ubuntu(color: Colors.black),
    // button: GoogleFonts.ubuntu(color: Colors.black),
    // headline1: GoogleFonts.ubuntu(color: Colors.black),
    // headline2: GoogleFonts.ubuntu(color: Colors.black),
    // headline3: GoogleFonts.ubuntu(color: Colors.black),
    // headline4: GoogleFonts.ubuntu(color: Colors.black),
    // headline5: GoogleFonts.ubuntu(color: Colors.black),
    // headline6: GoogleFonts.ubuntu(color: Colors.black),
    // overline: GoogleFonts.ubuntu(color: Colors.black),
    // subtitle1: GoogleFonts.ubuntu(color: Colors.black),
    // subtitle2: GoogleFonts.ubuntu(color: Colors.black)
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF2F4EFF)),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.sp)
        )
      ),
      elevation: MaterialStateProperty.all(10),
      textStyle: MaterialStateProperty.all<TextStyle>(GoogleFonts.ubuntu()),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(horizontal: 20, vertical: 15)
      )
    )
  ),
  focusColor: Colors.indigoAccent,
  cardColor: const Color.fromARGB(255, 255, 249, 230)
);

