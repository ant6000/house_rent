import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:house_rent/views/widgets/custom_button.dart';
import 'package:house_rent/views/widgets/house_card_big.dart';
import 'package:house_rent/views/widgets/house_card_small.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(fontSize: 12.83.sp),
                      ),
                      const DropdownMenu(dropdownMenuEntries: [
                        DropdownMenuEntry(value: 1, label: 'Dhaka'),
                        DropdownMenuEntry(value: 1, label: 'Noakhali'),
                        DropdownMenuEntry(value: 1, label: 'Comilla'),
                        DropdownMenuEntry(value: 1, label: 'Noraili'),
                        DropdownMenuEntry(value: 1, label: 'Lohagora'),
                        DropdownMenuEntry(value: 1, label: 'Sylet'),
                        DropdownMenuEntry(value: 1, label: 'Chottogram'),
                      ])
                    ],
                  ),
                  Image.asset('lib/assets/IC_Notification.png')
                ],
              ),
              SizedBox(height: 25.h),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black12.withOpacity(.05),
                          prefixIcon: Image.asset('lib/assets/IC_Search.png'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          hintText: 'Search Address or near you'),
                    ),
                  ),
                  SizedBox(width: 8.55.w),
                  Image.asset('lib/assets/filter_icon.png')
                ],
              ),
              SizedBox(height: 21.38.h),
              const Wrap(
                alignment: WrapAlignment.spaceBetween,
                direction: Axis.horizontal,
                children: [
                  CustomButton(btnText: 'Home'),
                  CustomButton(btnText: 'Apartment'),
                  CustomButton(btnText: 'Vila'),
                  CustomButton(btnText: 'Hotel'),
                ],
              ),
              SizedBox(height: 34.21.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Near from you',
                    style: TextStyle(
                        fontSize: 17.1.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                        fontSize: 12.83.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 290.76.h,
                child: ListView(
                  shrinkWrap: true,
                  
                  scrollDirection: Axis.horizontal,
                  children: const [
                    HouseCardBig(),
                    SizedBox(width: 25),
                    HouseCardBig(),
                    SizedBox(width: 25),
                    HouseCardBig(),
                  ],
                ),
              ),
              SizedBox(height: 21.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best for you',
                    style: TextStyle(
                        fontSize: 17.1.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                        fontSize: 12.83.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 21.h),
              const HouseCardSmall(),
              const SizedBox(height: 13),
              const HouseCardSmall(),
              const SizedBox(height: 13),
              const HouseCardSmall()
            ],
          ),
        ),
      ),
    );
  }
}
