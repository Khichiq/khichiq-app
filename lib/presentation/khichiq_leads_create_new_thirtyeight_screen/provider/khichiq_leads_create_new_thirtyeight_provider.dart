import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_thirtyeight_model.dart';import '../models/tabs_item_model.dart';/// A provider class for the KhichiqLeadsCreateNewThirtyeightScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewThirtyeightScreen, including the
/// current khichiqLeadsCreateNewThirtyeightModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewThirtyeightProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController nameController1 = TextEditingController();

TextEditingController nameController2 = TextEditingController();

TextEditingController floatingiconController = TextEditingController();

TextEditingController selectController = TextEditingController();

TextEditingController selectController1 = TextEditingController();

TextEditingController priceController = TextEditingController();

TextEditingController priceController1 = TextEditingController();

TextEditingController priceController2 = TextEditingController();

TextEditingController paidController = TextEditingController();

TextEditingController cALENDERController = TextEditingController();

KhichiqLeadsCreateNewThirtyeightModel khichiqLeadsCreateNewThirtyeightModelObj = KhichiqLeadsCreateNewThirtyeightModel();

bool markasPaid = false;

bool markasPaid1 = false;

bool markasPaid2 = false;

@override void dispose() { super.dispose(); nameController.dispose(); nameController1.dispose(); nameController2.dispose(); floatingiconController.dispose(); selectController.dispose(); selectController1.dispose(); priceController.dispose(); priceController1.dispose(); priceController2.dispose(); paidController.dispose(); cALENDERController.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewThirtyeightModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in khichiqLeadsCreateNewThirtyeightModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected2(dynamic value) { for (var element in khichiqLeadsCreateNewThirtyeightModelObj.dropdownItemList2) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected3(dynamic value) { for (var element in khichiqLeadsCreateNewThirtyeightModelObj.dropdownItemList3) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected4(dynamic value) { for (var element in khichiqLeadsCreateNewThirtyeightModelObj.dropdownItemList4) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected5(dynamic value) { for (var element in khichiqLeadsCreateNewThirtyeightModelObj.dropdownItemList5) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected6(dynamic value) { for (var element in khichiqLeadsCreateNewThirtyeightModelObj.dropdownItemList6) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected7(dynamic value) { for (var element in khichiqLeadsCreateNewThirtyeightModelObj.dropdownItemList7) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected8(dynamic value) { for (var element in khichiqLeadsCreateNewThirtyeightModelObj.dropdownItemList8) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected9(dynamic value) { for (var element in khichiqLeadsCreateNewThirtyeightModelObj.dropdownItemList9) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { khichiqLeadsCreateNewThirtyeightModelObj.tabsItemList.forEach((element) {element.isSelected = false;}); khichiqLeadsCreateNewThirtyeightModelObj.tabsItemList[index].isSelected = value; notifyListeners(); } 
void changeCheckBox1(bool value) { markasPaid = value; notifyListeners(); } 
void changeCheckBox2(bool value) { markasPaid1 = value; notifyListeners(); } 
void changeCheckBox3(bool value) { markasPaid2 = value; notifyListeners(); } 
 }
