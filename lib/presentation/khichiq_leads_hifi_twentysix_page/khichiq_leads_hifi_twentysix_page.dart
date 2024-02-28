import 'widgets/leadsall_item_widget.dart';
import 'models/leadsall_item_model.dart';
import 'models/khichiq_leads_hifi_twentysix_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_leads_hifi_twentysix_provider.dart';

// ignore_for_file: must_be_immutable
class KhichiqLeadsHifiTwentysixPage extends StatefulWidget {
  const KhichiqLeadsHifiTwentysixPage({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqLeadsHifiTwentysixPageState createState() =>
      KhichiqLeadsHifiTwentysixPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqLeadsHifiTwentysixProvider(),
      child: KhichiqLeadsHifiTwentysixPage(),
    );
  }
}

class KhichiqLeadsHifiTwentysixPageState
    extends State<KhichiqLeadsHifiTwentysixPage>
    with AutomaticKeepAliveClientMixin<KhichiqLeadsHifiTwentysixPage> {
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
              _buildLeadsAll(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLeadsAll(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Consumer<KhichiqLeadsHifiTwentysixProvider>(
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
            itemCount: provider
                .khichiqLeadsHifiTwentysixModelObj.leadsallItemList.length,
            itemBuilder: (context, index) {
              LeadsallItemModel model = provider
                  .khichiqLeadsHifiTwentysixModelObj.leadsallItemList[index];
              return LeadsallItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
