import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_hifi_thirteen_model.dart';import '../models/tabs18_item_model.dart';import 'package:calendar_date_picker2/calendar_date_picker2.dart';/// A provider class for the KhichiqLeadsCreateNewHifiThirteenScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewHifiThirteenScreen, including the
/// current khichiqLeadsCreateNewHifiThirteenModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewHifiThirteenProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

TextEditingController headerController = TextEditingController();

TextEditingController frameSeventyFiveController = TextEditingController();

TextEditingController typehereController = TextEditingController();

KhichiqLeadsCreateNewHifiThirteenModel khichiqLeadsCreateNewHifiThirteenModelObj = KhichiqLeadsCreateNewHifiThirteenModel();

List<DateTime?>? selectedDatesFromCalendar1;

@override void dispose() { super.dispose(); nameController.dispose(); mobileNumberController.dispose(); headerController.dispose(); frameSeventyFiveController.dispose(); typehereController.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewHifiThirteenModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in khichiqLeadsCreateNewHifiThirteenModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { khichiqLeadsCreateNewHifiThirteenModelObj.tabs18ItemList.forEach((element) {element.isSelected = false;}); khichiqLeadsCreateNewHifiThirteenModelObj.tabs18ItemList[index].isSelected = value; notifyListeners(); } 
 }
