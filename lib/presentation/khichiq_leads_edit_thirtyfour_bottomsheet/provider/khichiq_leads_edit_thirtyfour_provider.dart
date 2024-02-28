import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_leads_edit_thirtyfour_model.dart';

/// A provider class for the KhichiqLeadsEditThirtyfourBottomsheet.
///
/// This provider manages the state of the KhichiqLeadsEditThirtyfourBottomsheet, including the
/// current khichiqLeadsEditThirtyfourModelObj
class KhichiqLeadsEditThirtyfourProvider extends ChangeNotifier {
  KhichiqLeadsEditThirtyfourModel khichiqLeadsEditThirtyfourModelObj =
      KhichiqLeadsEditThirtyfourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
