import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_thirtyseven_model.dart';import '../models/tabs8_item_model.dart';import 'package:calendar_date_picker2/calendar_date_picker2.dart';/// A provider class for the KhichiqLeadsCreateNewThirtysevenScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewThirtysevenScreen, including the
/// current khichiqLeadsCreateNewThirtysevenModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewThirtysevenProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController nameController1 = TextEditingController();

TextEditingController nameController2 = TextEditingController();

TextEditingController priceController = TextEditingController();

TextEditingController paidController = TextEditingController();

TextEditingController cALENDERController = TextEditingController();

KhichiqLeadsCreateNewThirtysevenModel khichiqLeadsCreateNewThirtysevenModelObj = KhichiqLeadsCreateNewThirtysevenModel();

List<DateTime?>? selectedDatesFromCalendar1;

bool markasPaid = false;

bool markasPaid1 = false;

bool markasPaid2 = false;

@override void dispose() { super.dispose(); nameController.dispose(); nameController1.dispose(); nameController2.dispose(); priceController.dispose(); paidController.dispose(); cALENDERController.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewThirtysevenModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in khichiqLeadsCreateNewThirtysevenModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected2(dynamic value) { for (var element in khichiqLeadsCreateNewThirtysevenModelObj.dropdownItemList2) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected3(dynamic value) { for (var element in khichiqLeadsCreateNewThirtysevenModelObj.dropdownItemList3) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected4(dynamic value) { for (var element in khichiqLeadsCreateNewThirtysevenModelObj.dropdownItemList4) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected5(dynamic value) { for (var element in khichiqLeadsCreateNewThirtysevenModelObj.dropdownItemList5) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { khichiqLeadsCreateNewThirtysevenModelObj.tabs8ItemList.forEach((element) {element.isSelected = false;}); khichiqLeadsCreateNewThirtysevenModelObj.tabs8ItemList[index].isSelected = value; notifyListeners(); } 
void changeCheckBox1(bool value) { markasPaid = value; notifyListeners(); } 
void changeCheckBox2(bool value) { markasPaid1 = value; notifyListeners(); } 
void changeCheckBox3(bool value) { markasPaid2 = value; notifyListeners(); } 
 }
