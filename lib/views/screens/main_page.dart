import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:house_rent/views/screens/home_page.dart';
import 'package:house_rent/views/screens/saved_page.dart';
import 'package:house_rent/views/screens/settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pages = [const HomePage(), const SavedPage(), const SettingsPage()];
  final PageController pageController = PageController();
  int selected_index = 0;


  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            selected_index = value;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: GNav(
          selectedIndex: selected_index,
          onTabChange: (value) {
            setState(() {
              selected_index = value;
            });
            pageController.jumpToPage(value);
          },
          tabBorderRadius: 10.r,
          curve: Curves.easeOutExpo,
          tabMargin: const EdgeInsets.symmetric(horizontal: 10),
          //duration: const Duration(milliseconds: 300), // tab animation duration
          gap: 10,
          color: Colors.grey[800],
          activeColor: Colors.white,
          iconSize: 24,
          tabBackgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          tabs:  [
            GButton(icon: selected_index == 0 ? Icons.home : Icons.home_outlined, text: 'Home'),
            GButton(icon: selected_index == 1 ? Icons.bookmark :Icons.bookmark_outline_outlined, text: 'Saved'),
            GButton(icon: selected_index == 2 ? Icons.settings : Icons.settings_outlined, text: 'Settings')
          ]),
    );
  }
}
