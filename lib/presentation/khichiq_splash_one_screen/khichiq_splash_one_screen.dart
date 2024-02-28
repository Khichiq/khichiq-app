import 'models/khichiq_splash_one_model.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_splash_one_provider.dart';class KhichiqSplashOneScreen extends StatefulWidget {const KhichiqSplashOneScreen({Key? key}) : super(key: key);

@override KhichiqSplashOneScreenState createState() =>  KhichiqSplashOneScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqSplashOneProvider(), child: KhichiqSplashOneScreen()); } 
 }
class KhichiqSplashOneScreenState extends State<KhichiqSplashOneScreen> {@override void initState() { super.initState();Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.khichiqOnboardingOneScreen, );}); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 240.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 66.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgNounStar6104571, height: 120.adaptSize, width: 120.adaptSize), SizedBox(height: 26.v), Text("lbl_khichiq".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 305.v), Text("msg_proudly_made_in".tr, style: theme.textTheme.labelLarge)]))))])))); } 
 }
