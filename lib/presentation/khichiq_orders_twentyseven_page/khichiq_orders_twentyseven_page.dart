import 'widgets/khichiqorderstwentyseven_item_widget.dart';
import 'models/khichiqorderstwentyseven_item_model.dart';
import 'models/khichiq_orders_twentyseven_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_orders_twentyseven_provider.dart';

// ignore_for_file: must_be_immutable
class KhichiqOrdersTwentysevenPage extends StatefulWidget {
  const KhichiqOrdersTwentysevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqOrdersTwentysevenPageState createState() =>
      KhichiqOrdersTwentysevenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqOrdersTwentysevenProvider(),
      child: KhichiqOrdersTwentysevenPage(),
    );
  }
}

class KhichiqOrdersTwentysevenPageState
    extends State<KhichiqOrdersTwentysevenPage>
    with AutomaticKeepAliveClientMixin<KhichiqOrdersTwentysevenPage> {
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
              _buildKhichiqOrdersTwentySeven(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildKhichiqOrdersTwentySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Consumer<KhichiqOrdersTwentysevenProvider>(
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
            itemCount: provider.khichiqOrdersTwentysevenModelObj
                .khichiqorderstwentysevenItemList.length,
            itemBuilder: (context, index) {
              KhichiqorderstwentysevenItemModel model = provider
                  .khichiqOrdersTwentysevenModelObj
                  .khichiqorderstwentysevenItemList[index];
              return KhichiqorderstwentysevenItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
