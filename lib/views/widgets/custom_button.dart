import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  const CustomButton({required this.btnText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 160, 218, 251),
                Color.fromARGB(255, 10, 142, 217),
              ])),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.1.sp, vertical: 10.69.sp),
        child: Text(btnText,
          style: TextStyle(
              fontSize: 12.83.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white
              ),
        ),
      ),
    );
  }
}
