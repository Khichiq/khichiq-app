import 'package:vtracku_s_application6/presentation/khichiq_home_widgets_four_page/khichiq_home_widgets_four_page.dart';import 'package:vtracku_s_application6/presentation/khichiq_orders_twentysix_tab_container_page/khichiq_orders_twentysix_tab_container_page.dart';import 'package:vtracku_s_application6/widgets/app_bar/custom_app_bar.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_leading_circleimage.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_image.dart';import 'package:vtracku_s_application6/presentation/khichiq_leads_hifi_thirtyfive_page/khichiq_leads_hifi_thirtyfive_page.dart';import 'package:vtracku_s_application6/widgets/custom_bottom_bar.dart';import 'models/khichiq_leads_hifi_twentysix_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_leads_hifi_twentysix_tab_container_provider.dart';class KhichiqLeadsHifiTwentysixTabContainerScreen extends StatefulWidget {const KhichiqLeadsHifiTwentysixTabContainerScreen({Key? key}) : super(key: key);

@override KhichiqLeadsHifiTwentysixTabContainerScreenState createState() =>  KhichiqLeadsHifiTwentysixTabContainerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqLeadsHifiTwentysixTabContainerProvider(), child: KhichiqLeadsHifiTwentysixTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class KhichiqLeadsHifiTwentysixTabContainerScreenState extends State<KhichiqLeadsHifiTwentysixTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); tabviewController = TabController(length: 5, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 24.v), _buildTabview(context), Expanded(child: SizedBox(height: 574.v, child: TabBarView(controller: tabviewController, children: [KhichiqLeadsHifiThirtyfivePage.builder(context), KhichiqLeadsHifiThirtyfivePage.builder(context), KhichiqLeadsHifiThirtyfivePage.builder(context), KhichiqLeadsHifiThirtyfivePage.builder(context), KhichiqLeadsHifiThirtyfivePage.builder(context)])))])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 64.v, leadingWidth: 64.h, leading: AppbarLeadingCircleimage(imagePath: ImageConstant.imgEllipse31, margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v)), centerTitle: true, title: AppbarSubtitle(text: "lbl_leads_4".tr), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgFloatingIconPrimary, margin: EdgeInsets.only(left: 16.h, top: 20.v, right: 20.h), onTap: () {onTapFloatingIcon(context);}), AppbarTrailingImage(imagePath: ImageConstant.imgSearchGray500, margin: EdgeInsets.only(left: 18.h, top: 20.v, right: 36.h))], styleType: Style.bgOutline_1); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 30.v, width: 359.h, child: TabBar(controller: tabviewController, isScrollable: true, labelColor: appTheme.whiteA700, labelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'Outfit', fontWeight: FontWeight.w600), unselectedLabelColor: appTheme.blueGray900, unselectedLabelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'Outfit', fontWeight: FontWeight.w400), indicator: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(15.h)), tabs: [Tab(child: Text("lbl_all".tr)), Tab(child: Text("lbl_new2".tr)), Tab(child: Text("lbl_quote_sent2".tr)), Tab(child: Text("lbl_rejected2".tr)), Tab(child: Text("lbl_archived".tr))])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.khichiqHomeWidgetsFourPage; case BottomBarEnum.Orders: return AppRoutes.khichiqOrdersTwentysixTabContainerPage; case BottomBarEnum.Leads: return "/"; case BottomBarEnum.Calendar: return "/"; case BottomBarEnum.Payments: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.khichiqHomeWidgetsFourPage: return KhichiqHomeWidgetsFourPage.builder(context); case AppRoutes.khichiqOrdersTwentysixTabContainerPage: return KhichiqOrdersTwentysixTabContainerPage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the khichiqLeadsHifiThirtyeightTabContainerScreen when the action is triggered.
onTapFloatingIcon(BuildContext context) { NavigatorService.pushNamed(AppRoutes.khichiqLeadsHifiThirtyeightTabContainerScreen, ); } 
 }
