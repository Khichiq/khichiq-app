import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';import 'models/khichiq_leads_create_new_fortyone_model.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_leads_create_new_fortyone_provider.dart';import 'package:vtracku_s_application6/presentation/khichiq_leads_create_new_fortythree_bottomsheet/khichiq_leads_create_new_fortythree_bottomsheet.dart';class KhichiqLeadsCreateNewFortyoneBottomsheet extends StatefulWidget {const KhichiqLeadsCreateNewFortyoneBottomsheet({Key? key}) : super(key: key);

@override KhichiqLeadsCreateNewFortyoneBottomsheetState createState() =>  KhichiqLeadsCreateNewFortyoneBottomsheetState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqLeadsCreateNewFortyoneProvider(), child: KhichiqLeadsCreateNewFortyoneBottomsheet()); } 
 }
class KhichiqLeadsCreateNewFortyoneBottomsheetState extends State<KhichiqLeadsCreateNewFortyoneBottomsheet> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return _buildScrollView(context); } 
/// Section Widget
Widget _buildScrollView(BuildContext context) { return SingleChildScrollView(child: Container(padding: EdgeInsets.fromLTRB(16.h, 21.v, 16.h, 22.v), decoration: AppDecoration.outlineGray300011, child: Column(mainAxisSize: MainAxisSize.min, children: [Align(alignment: Alignment.centerRight, child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 80.adaptSize, width: 80.adaptSize, margin: EdgeInsets.only(top: 2.v), padding: EdgeInsets.all(10.h), decoration: AppDecoration.fillPrimary1.copyWith(borderRadius: BorderRadiusStyle.circleBorder40), child: CustomImageView(imagePath: ImageConstant.imgLock, height: 60.adaptSize, width: 60.adaptSize, alignment: Alignment.center)), CustomImageView(imagePath: ImageConstant.imgCancel, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 115.h, bottom: 66.v))])), SizedBox(height: 17.v), Text("msg_allow_access_to".tr, style: CustomTextStyles.titleMedium18), SizedBox(height: 8.v), Container(width: 308.h, margin: EdgeInsets.symmetric(horizontal: 17.h), child: Text("msg_let_s_sync_your".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyMedium!.copyWith(height: 1.29))), SizedBox(height: 21.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgFi10703030, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("msg_your_data_is_safe".tr, style: theme.textTheme.bodyMedium))]), SizedBox(height: 48.v), CustomElevatedButton(text: "lbl_sync_contacts".tr, onPressed: () {onTapSYNCCONTACTS(context);}), SizedBox(height: 12.v)]))); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [KhichiqLeadsCreateNewFortythreeBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapSYNCCONTACTS(BuildContext context) { showModalBottomSheet(context: NavigatorService.navigatorKey.currentContext!, builder: (_)=>KhichiqLeadsCreateNewFortythreeBottomsheet.builder(NavigatorService.navigatorKey.currentContext!),isScrollControlled: true); } 
 }
