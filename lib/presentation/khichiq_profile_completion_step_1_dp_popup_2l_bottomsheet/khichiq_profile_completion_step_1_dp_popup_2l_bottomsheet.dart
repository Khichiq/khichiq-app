import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';import 'package:vtracku_s_application6/widgets/custom_outlined_button.dart';import 'models/khichiq_profile_completion_step_1_dp_popup_2l_model.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_profile_completion_step_1_dp_popup_2l_provider.dart';import 'package:vtracku_s_application6/presentation/khichiq_profile_completion_step_1_dp_crop_2m_dialog/khichiq_profile_completion_step_1_dp_crop_2m_dialog.dart';class KhichiqProfileCompletionStep1DpPopup2lBottomsheet extends StatefulWidget {const KhichiqProfileCompletionStep1DpPopup2lBottomsheet({Key? key}) : super(key: key);

@override KhichiqProfileCompletionStep1DpPopup2lBottomsheetState createState() =>  KhichiqProfileCompletionStep1DpPopup2lBottomsheetState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqProfileCompletionStep1DpPopup2lProvider(), child: KhichiqProfileCompletionStep1DpPopup2lBottomsheet()); } 
 }
class KhichiqProfileCompletionStep1DpPopup2lBottomsheetState extends State<KhichiqProfileCompletionStep1DpPopup2lBottomsheet> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return _buildScrollView(context); } 
/// Section Widget
Widget _buildScrollView(BuildContext context) { return SingleChildScrollView(child: Container(padding: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v), decoration: AppDecoration.outlineGray300011, child: Column(mainAxisSize: MainAxisSize.min, children: [Align(alignment: Alignment.centerRight, child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgCameraGray800, height: 80.adaptSize, width: 80.adaptSize, margin: EdgeInsets.only(top: 8.v)), CustomImageView(imagePath: ImageConstant.imgCancel, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 116.h, bottom: 72.v))])), SizedBox(height: 18.v), Text("msg_upload_profile_picture2".tr, style: CustomTextStyles.titleMedium18), SizedBox(height: 36.v), CustomElevatedButton(text: "lbl_browse_gallery".tr, onPressed: () {onTapBROWSEGALLERY(context);}), SizedBox(height: 12.v), CustomOutlinedButton(text: "lbl_open_camera".tr, onPressed: () {onTapOPENCAMERA(context);}), SizedBox(height: 18.v)]))); } 

/// Displays a dialog with the [KhichiqProfileCompletionStep1DpCrop2mDialog] content.
onTapBROWSEGALLERY(BuildContext context) { showDialog(context: NavigatorService.navigatorKey.currentContext!, builder: (_) => AlertDialog(content: KhichiqProfileCompletionStep1DpCrop2mDialog.builder(NavigatorService.navigatorKey.currentContext!),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 

/// Displays a dialog with the [KhichiqProfileCompletionStep1DpCrop2mDialog] content.
onTapOPENCAMERA(BuildContext context) { showDialog(context: NavigatorService.navigatorKey.currentContext!, builder: (_) => AlertDialog(content: KhichiqProfileCompletionStep1DpCrop2mDialog.builder(NavigatorService.navigatorKey.currentContext!),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }
