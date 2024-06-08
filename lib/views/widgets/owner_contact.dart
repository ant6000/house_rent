import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:house_rent/data/model/custom_model.dart';

class OwnerContact extends StatelessWidget {
  final CustomModel houseModel;
  const OwnerContact({required this.houseModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30.r,
              backgroundColor: Colors.grey,
              child: ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(20)),
                  child: Image.asset(
                    'lib/assets/profile_pic1.png',
                  )),
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(houseModel.attributes?.ownerName ?? '',
                    style: TextStyle(
                        fontSize: 17.sp, fontWeight: FontWeight.w500)),
                Text('Owner',
                    style: TextStyle(
                        fontSize: 12.sp, fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Image.asset('lib/assets/IC_Phone.png'),
            SizedBox(
              width: 10.w,
            ),
            Image.asset('lib/assets/IC_Message.png'),
          ],
        )
      ],
    );
  }
}
