import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:house_rent/data/model/custom_model.dart';

class HouseCardSmall extends StatelessWidget {
  final CustomModel houseMOdel;
  const HouseCardSmall({required this.houseMOdel, super.key});

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
              Text(houseMOdel.attributes?.houseTitle?? 'Default',
                  style:
                      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500)),
              Text(houseMOdel.attributes?.price.toString() ?? '0',
                  style: TextStyle(
                      fontSize: 12.83.sp, fontWeight: FontWeight.w400)),
              Row(
                children: [
                  Image.asset('lib/assets/IC_Bed.png'),
                  SizedBox(width: 5.w),
                  Text('${houseMOdel.attributes?.bed} Bed',
                      style: TextStyle(
                          fontSize: 12.83.sp, fontWeight: FontWeight.w400)),
                  SizedBox(width: 10.w),
                  Image.asset('lib/assets/IC_Bath.png'),
                  SizedBox(width: 5.w),
                  Text('${houseMOdel.attributes?.bath} Bath',
                      style: TextStyle(
                          fontSize: 12.83.sp, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5.w),
                  Image.asset('lib/assets/IC_Bath.png'),
                  Text('${houseMOdel.attributes?.kitchen} Kitc.',
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
