import 'widgets/khichiqorderstwentysix_item_widget.dart';
import 'models/khichiqorderstwentysix_item_model.dart';
import 'models/khichiq_orders_twentysix_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_orders_twentysix_provider.dart';

// ignore_for_file: must_be_immutable
class KhichiqOrdersTwentysixPage extends StatefulWidget {
  const KhichiqOrdersTwentysixPage({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqOrdersTwentysixPageState createState() =>
      KhichiqOrdersTwentysixPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqOrdersTwentysixProvider(),
      child: KhichiqOrdersTwentysixPage(),
    );
  }
}

class KhichiqOrdersTwentysixPageState extends State<KhichiqOrdersTwentysixPage>
    with AutomaticKeepAliveClientMixin<KhichiqOrdersTwentysixPage> {
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
              _buildKhichiqOrdersTwentySix(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildKhichiqOrdersTwentySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Consumer<KhichiqOrdersTwentysixProvider>(
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
            itemCount: provider.khichiqOrdersTwentysixModelObj
                .khichiqorderstwentysixItemList.length,
            itemBuilder: (context, index) {
              KhichiqorderstwentysixItemModel model = provider
                  .khichiqOrdersTwentysixModelObj
                  .khichiqorderstwentysixItemList[index];
              return KhichiqorderstwentysixItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
