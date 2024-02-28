import 'package:vtracku_s_application6/widgets/custom_icon_button.dart';import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';import 'models/khichiq_leads_create_new_forty_model.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_leads_create_new_forty_provider.dart';class KhichiqLeadsCreateNewFortyBottomsheet extends StatefulWidget {const KhichiqLeadsCreateNewFortyBottomsheet({Key? key}) : super(key: key);

@override KhichiqLeadsCreateNewFortyBottomsheetState createState() =>  KhichiqLeadsCreateNewFortyBottomsheetState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqLeadsCreateNewFortyProvider(), child: KhichiqLeadsCreateNewFortyBottomsheet()); } 
 }
class KhichiqLeadsCreateNewFortyBottomsheetState extends State<KhichiqLeadsCreateNewFortyBottomsheet> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return _buildScrollView(context); } 
/// Section Widget
Widget _buildScrollView(BuildContext context) { return SingleChildScrollView(child: Container(padding: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v), decoration: AppDecoration.outlineGray300011, child: Column(mainAxisSize: MainAxisSize.min, children: [Align(alignment: Alignment.centerRight, child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 80.adaptSize, width: 80.adaptSize, margin: EdgeInsets.only(top: 8.v), padding: EdgeInsets.all(10.h), decoration: AppDecoration.fillGreen.copyWith(borderRadius: BorderRadiusStyle.circleBorder40), child: CustomIconButton(height: 60.adaptSize, width: 60.adaptSize, padding: EdgeInsets.all(14.h), decoration: IconButtonStyleHelper.fillGreen, alignment: Alignment.center, child: CustomImageView(imagePath: ImageConstant.imgCheckmark))), CustomImageView(imagePath: ImageConstant.imgCancel, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 115.h, bottom: 72.v))])), SizedBox(height: 16.v), Text("msg_invitation_sent".tr, style: CustomTextStyles.titleMedium18), SizedBox(height: 40.v), CustomElevatedButton(text: "lbl_close".tr, onPressed: () {onTapCLOSE(context);}), SizedBox(height: 18.v)]))); } 
/// Navigates to the khichiqLeadsCreateNewFortyfiveScreen when the action is triggered.
onTapCLOSE(BuildContext context) { NavigatorService.pushNamed(AppRoutes.khichiqLeadsCreateNewFortyfiveScreen, ); } 
 }
