import 'models/khichiq_leads_edit_thirtyfour_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_leads_edit_thirtyfour_provider.dart';

// ignore_for_file: must_be_immutable
class KhichiqLeadsEditThirtyfourBottomsheet extends StatefulWidget {
  const KhichiqLeadsEditThirtyfourBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqLeadsEditThirtyfourBottomsheetState createState() =>
      KhichiqLeadsEditThirtyfourBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqLeadsEditThirtyfourProvider(),
      child: KhichiqLeadsEditThirtyfourBottomsheet(),
    );
  }
}

class KhichiqLeadsEditThirtyfourBottomsheetState
    extends State<KhichiqLeadsEditThirtyfourBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(
          left: 16.h,
          right: 16.h,
          bottom: 181.v,
        ),
        color: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.indigo100.withOpacity(0.5),
            width: 1.h,
          ),
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Container(
          height: 134.v,
          width: 343.h,
          padding: EdgeInsets.all(7.h),
          decoration: AppDecoration.outlineIndigo1001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 118.v,
                  width: 327.h,
                  decoration: BoxDecoration(
                    color: appTheme.gray50,
                    borderRadius: BorderRadius.circular(
                      8.h,
                    ),
                    border: Border.all(
                      color: appTheme.indigo100,
                      width: 1.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 15.v,
                  ),
                  child: Text(
                    "lbl_type_here".tr,
                    style: CustomTextStyles.bodyLargeGray400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
