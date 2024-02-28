import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_leads_hifi_twentysix_model.dart';
import '../models/leadsall_item_model.dart';

/// A provider class for the KhichiqLeadsHifiTwentysixPage.
///
/// This provider manages the state of the KhichiqLeadsHifiTwentysixPage, including the
/// current khichiqLeadsHifiTwentysixModelObj
class KhichiqLeadsHifiTwentysixProvider extends ChangeNotifier {
  KhichiqLeadsHifiTwentysixModel khichiqLeadsHifiTwentysixModelObj =
      KhichiqLeadsHifiTwentysixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
