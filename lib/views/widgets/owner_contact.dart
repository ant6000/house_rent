import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OwnerContact extends StatelessWidget {
  const OwnerContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundColor: Colors.grey,
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
              child: Image.asset(
                'lib/assets/profile_pic1.png',
              )),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Garry Allen',
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500)),
            Text('Owner',
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400)),
          ],
        ),
        SizedBox(width: 100.w),
        Image.asset('lib/assets/IC_Phone.png'),
        SizedBox(
          width: 10.w,
        ),
        Image.asset('lib/assets/IC_Message.png'),
      ],
    );
  }
}
