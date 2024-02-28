import 'widgets/khichiqordersthirtysix_item_widget.dart';
import 'models/khichiqordersthirtysix_item_model.dart';
import 'models/khichiq_orders_thirtysix_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_orders_thirtysix_provider.dart';

// ignore_for_file: must_be_immutable
class KhichiqOrdersThirtysixPage extends StatefulWidget {
  const KhichiqOrdersThirtysixPage({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqOrdersThirtysixPageState createState() =>
      KhichiqOrdersThirtysixPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqOrdersThirtysixProvider(),
      child: KhichiqOrdersThirtysixPage(),
    );
  }
}

class KhichiqOrdersThirtysixPageState extends State<KhichiqOrdersThirtysixPage>
    with AutomaticKeepAliveClientMixin<KhichiqOrdersThirtysixPage> {
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
              _buildKhichiqOrdersThirtySix(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildKhichiqOrdersThirtySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Consumer<KhichiqOrdersThirtysixProvider>(
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
            itemCount: provider.khichiqOrdersThirtysixModelObj
                .khichiqordersthirtysixItemList.length,
            itemBuilder: (context, index) {
              KhichiqordersthirtysixItemModel model = provider
                  .khichiqOrdersThirtysixModelObj
                  .khichiqordersthirtysixItemList[index];
              return KhichiqordersthirtysixItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
