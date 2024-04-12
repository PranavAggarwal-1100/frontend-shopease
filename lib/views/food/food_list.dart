import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopease/common/app_style.dart';
import 'package:shopease/common/background_container.dart';
import 'package:shopease/common/reuseable_text.dart';
import 'package:shopease/constants/constants.dart';
import 'package:shopease/constants/uidata.dart';

import 'widgets/food_tile.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        backgroundColor: kPrimary,
        title: ReusableText(
          text: 'Food List',
          style: appStyle(
            18,
            kLightWhite, 
            FontWeight.w600
          ),
        ),
      ),

      body: BackGroundContainer(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: ListView.builder(
            itemCount: foods.length,
            itemBuilder: (context, i) {
              final food = foods[i];
              return FoodTile(food: food,);
            }
            ),
        ),
        ),
    );
  }
}
