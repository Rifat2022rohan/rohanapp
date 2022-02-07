import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rohanapp/const/appcolor.dart';
Widget CustomButton(String bottomText, onpressed){
  return SizedBox(
    width: 1.sw,
    height: 56.w,
    child: ElevatedButton(
      onPressed: onpressed, 
      child: Text(
        bottomText,
        style: TextStyle(color: Colors.white, fontSize: 18.sp),

      ),
      style: ElevatedButton.styleFrom(primary: appcolor.mycolor,elevation: 3),

      ),

  );
}