import 'widgets/leadsall1_item_widget.dart';
import 'models/leadsall1_item_model.dart';
import 'models/khichiq_leads_hifi_thirtyeight_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_leads_hifi_thirtyeight_provider.dart';

// ignore_for_file: must_be_immutable
class KhichiqLeadsHifiThirtyeightPage extends StatefulWidget {
  const KhichiqLeadsHifiThirtyeightPage({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqLeadsHifiThirtyeightPageState createState() =>
      KhichiqLeadsHifiThirtyeightPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqLeadsHifiThirtyeightProvider(),
      child: KhichiqLeadsHifiThirtyeightPage(),
    );
  }
}

class KhichiqLeadsHifiThirtyeightPageState
    extends State<KhichiqLeadsHifiThirtyeightPage>
    with AutomaticKeepAliveClientMixin<KhichiqLeadsHifiThirtyeightPage> {
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
      child: Consumer<KhichiqLeadsHifiThirtyeightProvider>(
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
                .khichiqLeadsHifiThirtyeightModelObj.leadsall1ItemList.length,
            itemBuilder: (context, index) {
              Leadsall1ItemModel model = provider
                  .khichiqLeadsHifiThirtyeightModelObj.leadsall1ItemList[index];
              return Leadsall1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
