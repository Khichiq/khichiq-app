import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_leads_hifi_thirtyeight_model.dart';
import '../models/leadsall1_item_model.dart';

/// A provider class for the KhichiqLeadsHifiThirtyeightPage.
///
/// This provider manages the state of the KhichiqLeadsHifiThirtyeightPage, including the
/// current khichiqLeadsHifiThirtyeightModelObj
class KhichiqLeadsHifiThirtyeightProvider extends ChangeNotifier {
  KhichiqLeadsHifiThirtyeightModel khichiqLeadsHifiThirtyeightModelObj =
      KhichiqLeadsHifiThirtyeightModel();

  @override
  void dispose() {
    super.dispose();
  }
}
