import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:house_rent/views/widgets/custom_button.dart';
import 'package:house_rent/views/widgets/house_card_big.dart';
import 'package:house_rent/views/widgets/house_card_small.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropdownMenu(
                        initialSelection: 2,
                        width: 170.w,
                        label: const Text('Location'),
                        inputDecorationTheme: InputDecorationTheme(
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            border: InputBorder.none),
                        trailingIcon: Padding(
                          padding: EdgeInsets.only(top: 20.h),
                          child: Image.asset('lib/assets/IC_Arrow down.png'),
                        ),
                        textStyle: TextStyle(fontSize: 21.38.sp),
                        dropdownMenuEntries: const [
                          DropdownMenuEntry(value: 1, label: 'Noakhali'),
                          DropdownMenuEntry(value: 2, label: 'Dhaka'),
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
            SizedBox(height: 10.h),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12.withOpacity(.05),
                        prefixIcon: Image.asset('lib/assets/IC_Search.png'),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'Search Address or near you'),
                  ),
                ),
                SizedBox(width: 8.55.w),
                Image.asset('lib/assets/filter_icon.png')
              ],
            ),
            SizedBox(height: 10.h),
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
            SizedBox(height: 10.h),
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
                      color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 290.76.h,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  HouseCardBig(),
                  SizedBox(width: 10),
                  HouseCardBig(),
                  SizedBox(width: 10),
                  HouseCardBig(),
                ],
              ),
            ),
            SizedBox(height: 10.h),
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
            SizedBox(height: 10.h),
            const HouseCardSmall(),
            const SizedBox(height: 10),
            const HouseCardSmall(),
            const SizedBox(height: 10),
            const HouseCardSmall()
          ],
        ),
      ),
      // bottomNavigationBar: GNav(
      //     tabBorderRadius: 10.r,
      //     curve: Curves.easeOutExpo,
      //     tabMargin: const EdgeInsets.symmetric(horizontal: 10),
      //     //duration: const Duration(milliseconds: 300), // tab animation duration
      //     gap: 10,
      //     color: Colors.grey[800],
      //     activeColor: Colors.white,
      //     iconSize: 24,
      //     tabBackgroundColor: Colors.blue,
      //     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //     tabs: const [
      //       GButton(icon: Icons.home, text: 'Home'),
      //       GButton(icon: Icons.bookmark, text: 'Saved'),
      //       GButton(icon: Icons.settings, text: 'Settings')
      //     ]),
    );
  }
}
