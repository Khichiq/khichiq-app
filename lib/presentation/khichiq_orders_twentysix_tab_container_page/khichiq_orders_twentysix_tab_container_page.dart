import 'package:vtracku_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vtracku_s_application6/presentation/khichiq_orders_thirtysix_page/khichiq_orders_thirtysix_page.dart';
import 'models/khichiq_orders_twentysix_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_orders_twentysix_tab_container_provider.dart';

// ignore_for_file: must_be_immutable
class KhichiqOrdersTwentysixTabContainerPage extends StatefulWidget {
  const KhichiqOrdersTwentysixTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqOrdersTwentysixTabContainerPageState createState() =>
      KhichiqOrdersTwentysixTabContainerPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqOrdersTwentysixTabContainerProvider(),
      child: KhichiqOrdersTwentysixTabContainerPage(),
    );
  }
}

class KhichiqOrdersTwentysixTabContainerPageState
    extends State<KhichiqOrdersTwentysixTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 649.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      KhichiqOrdersThirtysixPage.builder(context),
                      KhichiqOrdersThirtysixPage.builder(context),
                      KhichiqOrdersThirtysixPage.builder(context),
                      KhichiqOrdersThirtysixPage.builder(context),
                      KhichiqOrdersThirtysixPage.builder(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 64.v,
      leadingWidth: 64.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgBaa045e1A45541,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_orders_12".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgFloatingIconPrimary,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 20.v,
            right: 20.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearchGray500,
          margin: EdgeInsets.only(
            left: 18.h,
            top: 20.v,
            right: 36.h,
          ),
        ),
      ],
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 30.v,
      width: 359.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray900,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            15.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_upcoming2".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_my_shoots".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_completed".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_archived".tr,
            ),
          ),
        ],
      ),
    );
  }
}
