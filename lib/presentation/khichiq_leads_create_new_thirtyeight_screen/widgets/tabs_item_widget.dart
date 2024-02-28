import '../models/tabs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class TabsItemWidget extends StatelessWidget {
  TabsItemWidget(
    this.tabsItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  TabsItemModel tabsItemModelObj;

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
        tabsItemModelObj.eventOne!,
        style: TextStyle(
          color: (tabsItemModelObj.isSelected ?? false)
              ? appTheme.blueGray900
              : appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: (tabsItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.primary,
      selectedColor: Colors.transparent,
      shape: (tabsItemModelObj.isSelected ?? false)
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
