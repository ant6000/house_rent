import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:house_rent/views/screens/details_page.dart';
import 'package:house_rent/views/screens/home_page.dart';
import 'package:house_rent/views/screens/main_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    systemStatusBarContrastEnforced: false,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark
    ));
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge, 
      overlays: [SystemUiOverlay.bottom]
      );
    return  ScreenUtilInit(
      designSize:const Size(360, 800),
      builder: (_, child) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainPage(),
        );
      }
    );
  }
}
