import 'package:flutter/material.dart';
import 'package:shopease/common/app_style.dart';
import 'package:shopease/common/background_container.dart';
import 'package:shopease/common/reuseable_text.dart';
import 'package:shopease/constants/constants.dart';
import 'package:shopease/views/add_foods/widgets/all_categories.dart';

class AddFoods extends StatefulWidget {
  const AddFoods({super.key});

  @override
  State<AddFoods> createState() => _AddFoodsState();
}

class _AddFoodsState extends State<AddFoods> {

  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        backgroundColor: kPrimary,
        centerTitle: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableText(text: "Welcome to Restaurant Panel", 
            style: appStyle(14, kLightWhite, FontWeight.w600)),
            ReusableText(text: "Fill All the Required information to add food items", 
            style: appStyle(12, kLightWhite, FontWeight.normal)),
          ],
        ),
      ),
      body: BackGroundContainer(child: ListView(
        children: [
          SizedBox(
            width: width,
            height: height,
            child: PageView(
              controller: _pageController,
              pageSnapping: false,
              children: [
                ChooseCategory(),
              ],
            ),
          )
        ],
      )),
    );
  }
}
