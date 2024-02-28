import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_leads_hifi_thirtyeight_tab_container_model.dart';

/// A provider class for the KhichiqLeadsHifiThirtyeightTabContainerScreen.
///
/// This provider manages the state of the KhichiqLeadsHifiThirtyeightTabContainerScreen, including the
/// current khichiqLeadsHifiThirtyeightTabContainerModelObj
class KhichiqLeadsHifiThirtyeightTabContainerProvider extends ChangeNotifier {
  KhichiqLeadsHifiThirtyeightTabContainerModel
      khichiqLeadsHifiThirtyeightTabContainerModelObj =
      KhichiqLeadsHifiThirtyeightTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
