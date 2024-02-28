import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:country_pickers/country.dart';
import 'package:vtracku_s_application6/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
        border: Border.all(
          color: appTheme.indigo100,
          width: 1.h,
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 13.v,
                bottom: 13.v,
              ),
              child: Text(
                "+${country.phoneCode}",
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                right: 5.h,
              ),
              child: CustomTextFormField(
                width: 288.h,
                controller: controller,
                hintText: "lbl_98200_98200".tr,
                hintStyle: CustomTextStyles.titleMediumGray400,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 7.v, 13.h, 7.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdown,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 28.v,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 3.v),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
