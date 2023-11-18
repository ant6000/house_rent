import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:house_rent/views/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (_, child) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginPage(),
        );
      },
    );
  }
}
