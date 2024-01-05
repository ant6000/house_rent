import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:house_rent/views/screens/login_page.dart';

import 'views/screens/details_page.dart';
import 'views/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    systemStatusBarContrastEnforced: false,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark
    ));
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge, 
      overlays: [SystemUiOverlay.top]
      );
    return  ScreenUtilInit(
      designSize:const Size(360, 800),
      builder: (_, child) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      }
    );
  }
}


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(
//     const SystemUiOverlayStyle(
//     systemStatusBarContrastEnforced: true,
//     systemNavigationBarColor: Colors.transparent,
//     systemNavigationBarDividerColor: Colors.transparent,
//     systemNavigationBarIconBrightness: Brightness.dark,
//     statusBarIconBrightness: Brightness.dark));
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.top]);
//     // SystemChrome.setSystemUIOverlayStyle(
//     // SystemUiOverlayStyle(
//     //   systemNavigationBarColor: Colors.black.withOpacity(0.002),
//     // ),
//   // );
//     return MaterialApp(
//       title: 'Flutter Full Screen',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.blue, // Your background color
//         child: Center(
//           child: ListView.builder(
//             itemCount: 20,
//             itemBuilder: (context, index) {
//               return const ListTile(
//                 title: Text('Hello antor', style: TextStyle(fontSize: 25)),
//                 subtitle: Text('Hello antor', style: TextStyle(fontSize: 20)),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
