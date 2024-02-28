import 'package:vtracku_s_application6/widgets/custom_phone_number.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:vtracku_s_application6/widgets/custom_text_form_field.dart';
import 'package:vtracku_s_application6/widgets/custom_checkbox_button.dart';
import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';
import 'models/khichiq_leads_create_new_thirtynine_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_leads_create_new_thirtynine_provider.dart';

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewThirtynineBottomsheet extends StatefulWidget {
  const KhichiqLeadsCreateNewThirtynineBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqLeadsCreateNewThirtynineBottomsheetState createState() =>
      KhichiqLeadsCreateNewThirtynineBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqLeadsCreateNewThirtynineProvider(),
      child: KhichiqLeadsCreateNewThirtynineBottomsheet(),
    );
  }
}

class KhichiqLeadsCreateNewThirtynineBottomsheetState
    extends State<KhichiqLeadsCreateNewThirtynineBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
        decoration: AppDecoration.outlineGray300011,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 80.adaptSize,
                    width: 80.adaptSize,
                    margin: EdgeInsets.only(top: 8.v),
                    padding: EdgeInsets.all(10.h),
                    decoration: AppDecoration.fillPrimary1.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder40,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLock,
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCancel,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(
                      left: 115.h,
                      bottom: 72.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 13.v),
            Align(
              alignment: Alignment.center,
              child: Text(
                "msg_invite_new_member".tr,
                style: CustomTextStyles.titleMedium18,
              ),
            ),
            SizedBox(height: 22.v),
            Text(
              "msg_enter_mobile_number".tr,
              style: CustomTextStyles.labelLargeBluegray900,
            ),
            SizedBox(height: 7.v),
            Consumer<KhichiqLeadsCreateNewThirtynineProvider>(
              builder: (context, provider, child) {
                return CustomPhoneNumber(
                  country: provider.selectedCountry ??
                      CountryPickerUtils.getCountryByPhoneCode('1'),
                  controller: provider.phoneNumberController,
                  onTap: (Country value) {
                    context
                        .read<KhichiqLeadsCreateNewThirtynineProvider>()
                        .changeCountry(value);
                  },
                );
              },
            ),
            SizedBox(height: 10.v),
            Text(
              "lbl_enter_name".tr,
              style: CustomTextStyles.labelLargeBluegray900,
            ),
            SizedBox(height: 7.v),
            Selector<KhichiqLeadsCreateNewThirtynineProvider,
                TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.nameController,
              builder: (context, nameController, child) {
                return CustomTextFormField(
                  controller: nameController,
                  hintText: "lbl_enter_here".tr,
                  hintStyle: CustomTextStyles.titleMediumGray400,
                  textInputAction: TextInputAction.done,
                );
              },
            ),
            SizedBox(height: 12.v),
            _buildCheckboxActive(context),
            SizedBox(height: 24.v),
            Text(
              "msg_let_them_know_about".tr,
              style: CustomTextStyles.bodyMediumGray500,
            ),
            SizedBox(height: 46.v),
            CustomElevatedButton(
              text: "lbl_invite_friends".tr,
              leftIcon: Container(
                margin: EdgeInsets.only(right: 10.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSocial,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
              ),
            ),
            SizedBox(height: 18.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckboxActive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 37.h),
      child: Selector<KhichiqLeadsCreateNewThirtynineProvider, bool?>(
        selector: (
          context,
          provider,
        ) =>
            provider.checkboxActive,
        builder: (context, checkboxActive, child) {
          return CustomCheckboxButton(
            text: "msg_select_to_add_this".tr,
            value: checkboxActive,
            textStyle: theme.textTheme.bodyMedium,
            onChange: (value) {
              context
                  .read<KhichiqLeadsCreateNewThirtynineProvider>()
                  .changeCheckBox1(value);
            },
          );
        },
      ),
    );
  }
}
