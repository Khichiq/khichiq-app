import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_home_widgets_four_container_model.dart';

/// A provider class for the KhichiqHomeWidgetsFourContainerScreen.
///
/// This provider manages the state of the KhichiqHomeWidgetsFourContainerScreen, including the
/// current khichiqHomeWidgetsFourContainerModelObj
class KhichiqHomeWidgetsFourContainerProvider extends ChangeNotifier {
  KhichiqHomeWidgetsFourContainerModel khichiqHomeWidgetsFourContainerModelObj =
      KhichiqHomeWidgetsFourContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
