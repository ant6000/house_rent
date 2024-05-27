import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HouseCardBig extends StatelessWidget {
  const HouseCardBig({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/detailsPage');
      },
      child: SizedBox(
        width: 200.w,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(fit: StackFit.expand,
              children: [
              Image.asset('lib/assets/home1.jpeg', fit: BoxFit.cover),
            const Positioned(bottom:5,left: 5, 
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dreamsville House',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
                Text('TatiBazar, Old-Dhaka',style: TextStyle(fontSize: 12)),
              ],
            ))])),
      ),
    );
  }
}
