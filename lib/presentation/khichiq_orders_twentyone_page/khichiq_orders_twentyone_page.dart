import 'widgets/khichiqorderstwentyone_item_widget.dart';
import 'models/khichiqorderstwentyone_item_model.dart';
import 'models/khichiq_orders_twentyone_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_orders_twentyone_provider.dart';

// ignore_for_file: must_be_immutable
class KhichiqOrdersTwentyonePage extends StatefulWidget {
  const KhichiqOrdersTwentyonePage({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqOrdersTwentyonePageState createState() =>
      KhichiqOrdersTwentyonePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqOrdersTwentyoneProvider(),
      child: KhichiqOrdersTwentyonePage(),
    );
  }
}

class KhichiqOrdersTwentyonePageState extends State<KhichiqOrdersTwentyonePage>
    with AutomaticKeepAliveClientMixin<KhichiqOrdersTwentyonePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.background,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              _buildKhichiqOrdersTwentyOne(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildKhichiqOrdersTwentyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Consumer<KhichiqOrdersTwentyoneProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 12.v,
              );
            },
            itemCount: provider.khichiqOrdersTwentyoneModelObj
                .khichiqorderstwentyoneItemList.length,
            itemBuilder: (context, index) {
              KhichiqorderstwentyoneItemModel model = provider
                  .khichiqOrdersTwentyoneModelObj
                  .khichiqorderstwentyoneItemList[index];
              return KhichiqorderstwentyoneItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
