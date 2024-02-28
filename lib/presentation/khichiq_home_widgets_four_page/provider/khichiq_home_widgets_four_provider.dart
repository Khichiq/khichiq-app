import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_home_widgets_four_model.dart';
import '../models/khichiqhomewidgetsfour_item_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

/// A provider class for the KhichiqHomeWidgetsFourPage.
///
/// This provider manages the state of the KhichiqHomeWidgetsFourPage, including the
/// current khichiqHomeWidgetsFourModelObj
class KhichiqHomeWidgetsFourProvider extends ChangeNotifier {
  TextEditingController playController = TextEditingController();

  TextEditingController sayaliAniketController = TextEditingController();

  KhichiqHomeWidgetsFourModel khichiqHomeWidgetsFourModelObj =
      KhichiqHomeWidgetsFourModel();

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
    playController.dispose();
    sayaliAniketController.dispose();
  }
}
