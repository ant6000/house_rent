import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:house_rent/data/model/custom_model.dart';
import 'package:house_rent/views/widgets/owner_contact.dart';

class DetailsPage extends StatelessWidget {
  final CustomModel houseModel;
  const DetailsPage({required this.houseModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: ListView(
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'lib/assets/home1.jpeg',
                      height: 340.h,
                      width: 360.w,
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.black.withOpacity(0.2),
                          child: Image.asset('lib/assets/IC_Back.png'),
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black.withOpacity(0.2),
                        child: Image.asset('lib/assets/IC_Bookmark.png'),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(houseModel.attributes!.houseTitle.toString(),
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        SizedBox(height: 8.h),
                        Text(houseModel.attributes!.location.toString(),
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            Image.asset('lib/assets/IC_Bed.png',
                                color: Colors.white),
                            SizedBox(width: 8.w),
                            Text('${houseModel.attributes!.bed} Bed',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400)),
                            SizedBox(width: 20.w),
                            Image.asset('lib/assets/IC_Bath.png',
                                color: Colors.white),
                            SizedBox(width: 8.w),
                            Text('${houseModel.attributes!.bed} Bath',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400)),
                            SizedBox(width: 8.w),
                            Text('${houseModel.attributes!.kitchen} Kitch.',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400)),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10.h),
            Text('Description',
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500)),
            SizedBox(
              height: 10.h,
            ),
            Text(
                'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... Show More',
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500)),
            SizedBox(
              height: 10.h,
            ),
            const OwnerContact(),
            SizedBox(
              height: 20.h,
            ),
            Text('Gallery',
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500)),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      'lib/assets/home3.jpeg',
                      width: 80.w,
                      height: 80.h,
                      fit: BoxFit.cover,
                    )),
                ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      'lib/assets/home3.jpeg',
                      width: 80.w,
                      height: 80.h,
                      fit: BoxFit.cover,
                    )),
                ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      'lib/assets/home3.jpeg',
                      width: 80.w,
                      height: 80.h,
                      fit: BoxFit.cover,
                    )),
                ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      'lib/assets/home3.jpeg',
                      width: 80.w,
                      height: 80.h,
                      fit: BoxFit.cover,
                    )),
              ],
            ),
            SizedBox(height: 10.h),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                'lib/assets/Map.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Price',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w400)),
                    SizedBox(height: 5.h),
                    Text('${houseModel.attributes!.price} Tk / Mo',
                        style: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.w500)),
                  ],
                ),
                ElevatedButton(
                    style: TextButton.styleFrom(
                        elevation: 1, backgroundColor: Colors.blue),
                    onPressed: () {},
                    child: const Text('Rent Now'))
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
