import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:house_rent/controller/category_controller.dart';
import 'package:house_rent/controller/nearest_houe_controller.dart';
import 'package:house_rent/views/screens/see_more.dart';
import 'package:house_rent/views/widgets/catagory_button.dart';
import 'package:house_rent/views/widgets/house_card_small.dart';
import 'package:parallax_cards/parallax_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  final List<String> textlist = ['Home', 'Apartment', 'Vila', 'Hostel', 'Shop'];
  final List<String> imageList = [
    'lib/assets/home1.jpeg',
    'lib/assets/home1.jpeg',
    'lib/assets/home1.jpeg',
    'lib/assets/home1.jpeg',
    'lib/assets/home1.jpeg',
  ];

  final categoryController = Get.find<CategoryController>();
  final nearestHoueController = Get.find<NearestHoueController>();
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
          _buildSearchField(),
          SizedBox(height: 10.h),
          _buildCategoryButtton(),
          SizedBox(height: 10.h),
          _buildSectionTitle('Near From you', 'See more', 'grid'),
          SizedBox(height: 10.h),
          _buildHorizontaList(imageList, textlist),
          SizedBox(height: 10.h),
          _buildSectionTitle('Best for you', 'See more', 'list'),
          SizedBox(height: 10.h),
          _buildVerticleList(5, const HouseCardSmall())
        ],
      ),
    );
  }

  Row _buildSearchField() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 54,
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
        ),
        SizedBox(width: 8.55.w),
        Image.asset('lib/assets/filter_icon.png')
      ],
    );
  }

  Widget _buildCategoryButtton() {
    return SizedBox(
      height: 40.h,
      child: Obx(
        () => ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CatagoryButton(
                btnText: categoryController.categoryList[index],
                index: index,
              ),
            );
          },
          itemCount: categoryController.categoryList.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

Row _buildSectionTitle(String title, String str, String type) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500),
      ),
      InkWell(
        onTap: () {
          Get.to(() => SeeMorePage(type: type));
        },
        child: Text(
          str,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
        ),
      ),
    ],
  );
}

Widget _buildHorizontaList(List<String> imageList, List<String> text) {
  return Stack(
    children: [
       
        ParallaxCards(
          height: 300,
          width: 230,
          margin: const EdgeInsets.all(10),
          imagesList: imageList,
          scrollDirection: Axis.horizontal,
          onTap: (index) {
            Get.toNamed('/detailsPage');
          },
          overlays: [
            for (var title in text)
              Positioned(
                bottom: 5,
                left: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                    const Text('TatiBazar, Old-Dhaka',
                        style: TextStyle(fontSize: 12)),
                  ],
                ),
              )
          ],
        ),
      
    ],
  );
}

Widget _buildVerticleList(int itemCount, Widget item) {
  return ListView.builder(
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: item,
      );
    },
    itemCount: 10,
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    physics: const NeverScrollableScrollPhysics(),
  );
}
