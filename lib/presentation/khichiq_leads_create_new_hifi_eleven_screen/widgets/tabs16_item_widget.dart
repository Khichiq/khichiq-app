import '../models/tabs16_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class Tabs16ItemWidget extends StatelessWidget {
  Tabs16ItemWidget(
    this.tabs16ItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  Tabs16ItemModel tabs16ItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 6.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          tabs16ItemModelObj.eventOne!,
          style: TextStyle(
            color: (tabs16ItemModelObj.isSelected ?? false)
                ? appTheme.whiteA700
                : appTheme.blueGray900,
            fontSize: 14.fSize,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: (tabs16ItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primary,
        shape: (tabs16ItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.indigo100.withOpacity(0.5),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView1?.call(value);
        },
      ),
    );
  }
}
