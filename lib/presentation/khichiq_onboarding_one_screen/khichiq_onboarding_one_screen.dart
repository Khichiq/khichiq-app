import 'package:carousel_slider/carousel_slider.dart';import 'widgets/builtforyou_item_widget.dart';import 'models/builtforyou_item_model.dart';import 'models/khichiq_onboarding_one_model.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';import 'package:vtracku_s_application6/widgets/custom_phone_number.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/country_pickers.dart';import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_onboarding_one_provider.dart';import 'package:fluttertoast/fluttertoast.dart';class KhichiqOnboardingOneScreen extends StatefulWidget {const KhichiqOnboardingOneScreen({Key? key}) : super(key: key);

@override KhichiqOnboardingOneScreenState createState() =>  KhichiqOnboardingOneScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqOnboardingOneProvider(), child: KhichiqOnboardingOneScreen()); } 
 }
class KhichiqOnboardingOneScreenState extends State<KhichiqOnboardingOneScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 60.v), Expanded(child: SingleChildScrollView(child: Column(children: [CustomImageView(imagePath: ImageConstant.imgWeddingPhotogr, height: 299.v, width: 290.h), SizedBox(height: 38.v), _buildBuiltForYou(context), SizedBox(height: 21.v), Consumer<KhichiqOnboardingOneProvider>(builder: (context, provider, child) {return SizedBox(height: 6.v, child: AnimatedSmoothIndicator(activeIndex: provider.sliderIndex, count: provider.khichiqOnboardingOneModelObj.builtforyouItemList.length, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 4, activeDotColor: theme.colorScheme.primary, dotColor: appTheme.blueGray100, dotHeight: 6.v, dotWidth: 6.h)));}), SizedBox(height: 34.v), _buildFrameSixtyFour(context)])))])))); } 
/// Section Widget
Widget _buildBuiltForYou(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 31.h), child: Consumer<KhichiqOnboardingOneProvider>(builder: (context, provider, child) {return CarouselSlider.builder(options: CarouselOptions(height: 90.v, initialPage: 0, autoPlay: true, viewportFraction: 1.0, enableInfiniteScroll: false, scrollDirection: Axis.horizontal, onPageChanged: (index, reason) {provider.sliderIndex = index;}), itemCount: provider.khichiqOnboardingOneModelObj.builtforyouItemList.length, itemBuilder: (context, index, realIndex) {BuiltforyouItemModel model = provider.khichiqOnboardingOneModelObj.builtforyouItemList[index]; return BuiltforyouItemWidget(model);});})); } 
/// Section Widget
Widget _buildFrameSixtyFour(BuildContext context) { return Container(padding: EdgeInsets.fromLTRB(16.h, 21.v, 16.h, 22.v), decoration: AppDecoration.outlineGray, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_mobile_number".tr, style: CustomTextStyles.labelLargeBluegray900), SizedBox(height: 7.v), Consumer<KhichiqOnboardingOneProvider>(builder: (context, provider, child) {return CustomPhoneNumber(country: provider.selectedCountry ?? CountryPickerUtils.getCountryByPhoneCode('1'), controller: provider.phoneNumberController, onTap: (Country value) {context.read<KhichiqOnboardingOneProvider>().changeCountry(value);});}), SizedBox(height: 12.v), Text("msg_it_s_new_it_s".tr, style: CustomTextStyles.bodyMediumGray500), SizedBox(height: 59.v), CustomElevatedButton(text: "lbl_submit".tr, onPressed: () {checkUserDetails(context);}), SizedBox(height: 11.v)])); } 
checkUserDetails(BuildContext context) { Provider.of<KhichiqOnboardingOneProvider>(context, listen: false).callAuthenticatePost(onError: () {

_onAuthenticatePostEventError(context);
},);
 } 

/// Displays a toast message using the FlutterToast library.
void _onAuthenticatePostEventError(BuildContext context) { 
Fluttertoast.showToast(msg: "Otp Validation Failed",); } 
 }
