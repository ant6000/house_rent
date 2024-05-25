import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:house_rent/views/widgets/catagory_button.dart';
import 'package:house_rent/views/widgets/house_card_big.dart';
import 'package:house_rent/views/widgets/house_card_small.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  final List<String> list = ['Home', 'Apartment', 'Vila', 'Hostel', 'Shop'];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: ListView(
        shrinkWrap: true,
        children: [
          _buildLocationDropDown(),
          SizedBox(height: 10.h),
          _buildSearchField(),
          SizedBox(height: 10.h),
          _buildCategoryButtton(),
          SizedBox(height: 10.h),
          _buildSectionTitle('Near From you', 'See more'),
          SizedBox(height: 10.h),
          _buildHorizontaList(5, const HouseCardBig()),
          SizedBox(height: 10.h),
          _buildSectionTitle('Best for you', 'See more'),
          SizedBox(height: 10.h),
          _buildVerticleList(5, const HouseCardSmall())
        ],
      ),
    );
  }

  Row _buildLocationDropDown() {
    return Row(
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
                  DropdownMenuEntry(value: 1, label: 'Sylet'),
                  DropdownMenuEntry(value: 1, label: 'Chottogram'),
                ])
          ],
        ),
        const Icon(Icons.settings)
      ],
    );
  }

  Row _buildSectionTitle(String title, String str) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500),
        ),
        Text(
          str,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildHorizontaList(int itemCount, Widget item) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: item,
          );
        },
      ),
    );
  }

  Widget _buildCategoryButtton() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: CatagoryButton(
              btnText: list[index],
              index: index,
            ),
          );
        },
      ),
    );
  }
}

Row _buildSearchField() {
  return Row(
    children: [
      Expanded(
        child: TextField(
          decoration: InputDecoration(
              filled: true,
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
  );
}

Widget _buildVerticleList(int itemCount, Widget item) {
  return SizedBox(
    height: 500,
    child: ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: item,
        );
      },
      itemCount: 5,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
    ),
  );
}
