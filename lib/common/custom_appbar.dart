import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopease/common/app_style.dart';
import 'package:shopease/common/reuseable_text.dart';
import 'package:shopease/constants/constants.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 100.h,
      padding: EdgeInsets.fromLTRB(12.w,45.h,12.w,0),
      color: kPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundColor: Colors.white,
                backgroundImage: const AssetImage("assets/images/profile.jpg"),
              
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text:"Shopease",
                      style: appStyle(14.h, Colors.white, FontWeight.bold),
                    ),
                    ReusableText(
                      text:"Any Random Address",
                      style: appStyle(9.h, Colors.white, FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SvgPicture.asset(
            "assets/icons/open_sign.svg",
            width: 35.w,
            height: 35.w,
          )
        ],
      ),
    );
  }
}