import '../models/tabs10_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class Tabs10ItemWidget extends StatelessWidget {
  Tabs10ItemWidget(
    this.tabs10ItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  Tabs10ItemModel tabs10ItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 6.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        tabs10ItemModelObj.eventOne!,
        style: TextStyle(
          color: (tabs10ItemModelObj.isSelected ?? false)
              ? appTheme.blueGray900
              : appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: (tabs10ItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.primary,
      selectedColor: Colors.transparent,
      shape: (tabs10ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.indigo100.withOpacity(0.5),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                15.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                15.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
