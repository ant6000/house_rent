import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HouseCardSmall extends StatelessWidget {
  const HouseCardSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76.h,
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'lib/assets/home2.jpeg',
                width: 80.w,
                height: 76.h,
                fit: BoxFit.cover,
              )),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Orchad House',
                  style: TextStyle(
                      fontSize: 17.sp, fontWeight: FontWeight.w500)),
              Text('Rp. 2.500.000.000 / Year',
                  style: TextStyle(
                      fontSize: 12.83.sp, fontWeight: FontWeight.w400)),
              Row(
                children: [
                  Image.asset('lib/assets/IC_Bed.png'),
                  SizedBox(width: 8.55.w),
                  Text('6 Bedroom',
                      style: TextStyle(
                          fontSize: 12.83.sp, fontWeight: FontWeight.w400)),
                  SizedBox(width: 20.w),
                  Image.asset('lib/assets/IC_Bath.png'),
                  SizedBox(width: 8.55.w),
                  Text('4 Bathroom',
                      style: TextStyle(
                          fontSize: 12.83.sp, fontWeight: FontWeight.w400)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
