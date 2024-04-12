import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopease/common/TabWidget.dart';
import 'package:shopease/common/app_style.dart';
import 'package:shopease/common/background_container.dart';
import 'package:shopease/common/custom_appbar.dart';
import 'package:shopease/common/home_tile.dart';
import 'package:shopease/constants/constants.dart';
import 'package:shopease/views/home/widget/home_tiles.dart';
import 'package:shopease/views/home/widget/orders/cancelled.dart';
import 'package:shopease/views/home/widget/orders/new_orders.dart';
import 'package:shopease/views/home/widget/orders/picked_up.dart';
import 'package:shopease/views/home/widget/orders/preparing.dart';
import 'package:shopease/views/home/widget/orders/ready.dart';
import 'package:shopease/views/home/widget/orders/returned.dart';
import 'package:shopease/views/home/widget/orders/self_deliveries.dart';

import 'widget/home_tabs.dart'; 


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController = TabController(
    length: orderlist.length, 
    vsync: this
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimary,
        flexibleSpace: const CustomAppBar(),
      ),
      body: BackGroundContainer(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 15.h,
            ),
            const HomeTiles(),

            SizedBox(
              height: 15.h,
            ),

            HomeTabs(tabController: _tabController),

            SizedBox(
              height: 15.h,
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.w),
              height: height * 0.7,
              color: Colors.transparent,
              child: TabBarView(
                controller: _tabController,
                children: [
                  NewOrders(),
                  Preparing(),
                  Ready(),
                  PickedUp(),
                  SelfDeliveries(),
                  Cancelled(),
                  Returned(),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
