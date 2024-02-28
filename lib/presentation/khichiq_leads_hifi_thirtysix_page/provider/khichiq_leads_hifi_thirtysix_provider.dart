import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_leads_hifi_thirtysix_model.dart';
import '../models/leadsall3_item_model.dart';

/// A provider class for the KhichiqLeadsHifiThirtysixPage.
///
/// This provider manages the state of the KhichiqLeadsHifiThirtysixPage, including the
/// current khichiqLeadsHifiThirtysixModelObj
class KhichiqLeadsHifiThirtysixProvider extends ChangeNotifier {
  KhichiqLeadsHifiThirtysixModel khichiqLeadsHifiThirtysixModelObj =
      KhichiqLeadsHifiThirtysixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
