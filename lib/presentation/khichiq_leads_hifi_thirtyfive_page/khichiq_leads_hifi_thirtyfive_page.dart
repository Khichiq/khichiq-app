import 'widgets/leadsall2_item_widget.dart';import 'models/leadsall2_item_model.dart';import 'models/khichiq_leads_hifi_thirtyfive_model.dart';import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_leads_hifi_thirtyfive_provider.dart';class KhichiqLeadsHifiThirtyfivePage extends StatefulWidget {const KhichiqLeadsHifiThirtyfivePage({Key? key}) : super(key: key);

@override KhichiqLeadsHifiThirtyfivePageState createState() =>  KhichiqLeadsHifiThirtyfivePageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqLeadsHifiThirtyfiveProvider(), child: KhichiqLeadsHifiThirtyfivePage()); } 
 }
class KhichiqLeadsHifiThirtyfivePageState extends State<KhichiqLeadsHifiThirtyfivePage> with  AutomaticKeepAliveClientMixin<KhichiqLeadsHifiThirtyfivePage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 16.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(children: [_buildLeadsAll(context), SizedBox(height: 60.v), CustomElevatedButton(height: 38.v, text: "msg_new_lead_created".tr, buttonStyle: CustomButtonStyles.fillOnPrimaryTL8, buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700)]))]))))); } 
/// Section Widget
Widget _buildLeadsAll(BuildContext context) { return Consumer<KhichiqLeadsHifiThirtyfiveProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 12.v);}, itemCount: provider.khichiqLeadsHifiThirtyfiveModelObj.leadsall2ItemList.length, itemBuilder: (context, index) {Leadsall2ItemModel model = provider.khichiqLeadsHifiThirtyfiveModelObj.leadsall2ItemList[index]; return Leadsall2ItemWidget(model, onTapLeadCard: () {onTapLeadCard(context);});});}); } 
/// Navigates to the khichiqLeadsEditThirtythreeScreen when the action is triggered.
onTapLeadCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.khichiqLeadsEditThirtythreeScreen, ); } 
 }
