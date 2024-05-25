import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HouseCardBig extends StatelessWidget {
  const HouseCardBig({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 236.w,
      child: ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.asset('lib/assets/home1.jpeg',fit: BoxFit.cover)),
    );
  }
}