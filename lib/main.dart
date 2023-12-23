import 'package:amazon/common/utility/router.dart';
import 'package:amazon/constants/global_variables.dart';
import 'package:amazon/features/auth/screens/auth_screens.dart';
import 'package:amazon/theme/theme_constants.dart';
import 'package:amazon/theme/theme_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(
    MyApp(),
  );
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    if (kDebugMode) {
      print("initState calls");
    }
    _themeManager.addListener(themeListener);
    super.initState();
  }

  @override
  void dispose() {
    if (kDebugMode) {
      print("dispose calls");
    }
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  themeListener() {
    if (kDebugMode) {
      print("themeListener calls");
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sanrta Docs',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system, // _themeManager.themeMode,
        onGenerateRoute: (settings) => generateRoute(settings),
        home: AuthStateScreen()
      ),
    );
  }
}
