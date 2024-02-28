import 'widgets/leadsall3_item_widget.dart';
import 'models/leadsall3_item_model.dart';
import 'models/khichiq_leads_hifi_thirtysix_model.dart';
import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_leads_hifi_thirtysix_provider.dart';

// ignore_for_file: must_be_immutable
class KhichiqLeadsHifiThirtysixPage extends StatefulWidget {
  const KhichiqLeadsHifiThirtysixPage({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqLeadsHifiThirtysixPageState createState() =>
      KhichiqLeadsHifiThirtysixPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqLeadsHifiThirtysixProvider(),
      child: KhichiqLeadsHifiThirtysixPage(),
    );
  }
}

class KhichiqLeadsHifiThirtysixPageState
    extends State<KhichiqLeadsHifiThirtysixPage>
    with AutomaticKeepAliveClientMixin<KhichiqLeadsHifiThirtysixPage> {
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
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildLeadsAll(context),
                      SizedBox(height: 60.v),
                      CustomElevatedButton(
                        height: 38.v,
                        text: "msg_lead_information".tr,
                        buttonStyle: CustomButtonStyles.fillOnPrimaryTL8,
                        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLeadsAll(BuildContext context) {
    return Consumer<KhichiqLeadsHifiThirtysixProvider>(
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
              .khichiqLeadsHifiThirtysixModelObj.leadsall3ItemList.length,
          itemBuilder: (context, index) {
            Leadsall3ItemModel model = provider
                .khichiqLeadsHifiThirtysixModelObj.leadsall3ItemList[index];
            return Leadsall3ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
