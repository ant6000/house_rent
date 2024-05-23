import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child:
          ListView(
            children: [
              Center(child: Text('Saved Houses',style: TextStyle(fontSize: 30.sp))),
          ]),
    );
  }
}
