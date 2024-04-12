import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopease/common/TabWidget.dart';
import 'package:shopease/common/app_style.dart';
import 'package:shopease/constants/constants.dart';

class HomeTabs extends StatelessWidget {
  const HomeTabs({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:13.w),
      child: Container(
        height: 25.h,
        width: width,
        decoration: BoxDecoration(
          color: kOffWhite,
          borderRadius: BorderRadius.circular(25.r)
          
        ),
        child: TabBar(
          controller: _tabController,
          indicator: BoxDecoration(
            color: kPrimary,
            borderRadius: BorderRadius.circular(25.r)
          ),
          labelColor: kLightWhite,
          dividerColor: Colors.transparent,
          isScrollable: true,
          unselectedLabelColor: kGrayLight,
          tabAlignment: TabAlignment.start, 
          labelPadding: EdgeInsets.zero,
          unselectedLabelStyle: appStyle(13, kGrayLight, FontWeight.normal),
          labelStyle: appStyle(13, kLightWhite, FontWeight.w600),
          tabs: List.generate(orderlist.length, (i) {
            return TabWidget(
              text: orderlist[i],
            );
          }),
        ),
      ),
    );
  }
}

