import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_orders_thirtysix_model.dart';
import '../models/khichiqordersthirtysix_item_model.dart';

/// A provider class for the KhichiqOrdersThirtysixPage.
///
/// This provider manages the state of the KhichiqOrdersThirtysixPage, including the
/// current khichiqOrdersThirtysixModelObj
class KhichiqOrdersThirtysixProvider extends ChangeNotifier {
  KhichiqOrdersThirtysixModel khichiqOrdersThirtysixModelObj =
      KhichiqOrdersThirtysixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
