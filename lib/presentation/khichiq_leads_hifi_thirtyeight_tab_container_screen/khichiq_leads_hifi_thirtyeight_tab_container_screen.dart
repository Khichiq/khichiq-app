import 'package:vtracku_s_application6/presentation/khichiq_home_widgets_four_page/khichiq_home_widgets_four_page.dart';
import 'package:vtracku_s_application6/presentation/khichiq_orders_twentysix_tab_container_page/khichiq_orders_twentysix_tab_container_page.dart';
import 'package:vtracku_s_application6/presentation/khichiq_leads_hifi_thirtyeight_page/khichiq_leads_hifi_thirtyeight_page.dart';
import 'package:vtracku_s_application6/widgets/custom_bottom_bar.dart';
import 'models/khichiq_leads_hifi_thirtyeight_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_leads_hifi_thirtyeight_tab_container_provider.dart';

class KhichiqLeadsHifiThirtyeightTabContainerScreen extends StatefulWidget {
  const KhichiqLeadsHifiThirtyeightTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqLeadsHifiThirtyeightTabContainerScreenState createState() =>
      KhichiqLeadsHifiThirtyeightTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqLeadsHifiThirtyeightTabContainerProvider(),
      child: KhichiqLeadsHifiThirtyeightTabContainerScreen(),
    );
  }
}

class KhichiqLeadsHifiThirtyeightTabContainerScreenState
    extends State<KhichiqLeadsHifiThirtyeightTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTOPNAV(context),
              SizedBox(height: 24.v),
              _buildTABS(context),
              Expanded(
                child: SizedBox(
                  height: 574.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      KhichiqLeadsHifiThirtyeightPage.builder(context),
                      KhichiqLeadsHifiThirtyeightPage.builder(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTOPNAV(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(16.h, 8.v, 16.h, 7.v),
      decoration: AppDecoration.outlineIndigo1004,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse31,
            height: 48.adaptSize,
            width: 48.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
          ),
          Spacer(
            flex: 55,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_leads_4".tr,
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
          Spacer(
            flex: 44,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFloatingIcon,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSearchGray500,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 18.h,
              top: 12.v,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTABS(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30.v,
            width: 125.h,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.blueGray900,
              labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: appTheme.whiteA700,
              unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w600,
              ),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
                border: Border.all(
                  color: appTheme.indigo100.withOpacity(0.5),
                  width: 1.h,
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
                    "lbl_new2".tr,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 106.h,
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.outlineIndigo1003.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Text(
              "lbl_quote_sent2".tr,
              style: CustomTextStyles.bodyMediumBluegray900,
            ),
          ),
          Container(
            width: 91.h,
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlineIndigo1003.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Text(
              "lbl_rejected2".tr,
              style: CustomTextStyles.bodyMediumBluegray900,
            ),
          ),
          Container(
            width: 92.h,
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineIndigo1003.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Text(
              "lbl_archived".tr,
              style: CustomTextStyles.bodyMediumBluegray900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.khichiqHomeWidgetsFourPage;
      case BottomBarEnum.Orders:
        return AppRoutes.khichiqOrdersTwentysixTabContainerPage;
      case BottomBarEnum.Leads:
        return "/";
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Payments:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.khichiqHomeWidgetsFourPage:
        return KhichiqHomeWidgetsFourPage.builder(context);
      case AppRoutes.khichiqOrdersTwentysixTabContainerPage:
        return KhichiqOrdersTwentysixTabContainerPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
