import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_thirtysix_model.dart';import '../models/tabs2_item_model.dart';/// A provider class for the KhichiqLeadsCreateNewThirtysixScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewThirtysixScreen, including the
/// current khichiqLeadsCreateNewThirtysixModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewThirtysixProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController nameController1 = TextEditingController();

TextEditingController nameController2 = TextEditingController();

KhichiqLeadsCreateNewThirtysixModel khichiqLeadsCreateNewThirtysixModelObj = KhichiqLeadsCreateNewThirtysixModel();

@override void dispose() { super.dispose(); nameController.dispose(); nameController1.dispose(); nameController2.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewThirtysixModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in khichiqLeadsCreateNewThirtysixModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected2(dynamic value) { for (var element in khichiqLeadsCreateNewThirtysixModelObj.dropdownItemList2) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected3(dynamic value) { for (var element in khichiqLeadsCreateNewThirtysixModelObj.dropdownItemList3) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected4(dynamic value) { for (var element in khichiqLeadsCreateNewThirtysixModelObj.dropdownItemList4) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected5(dynamic value) { for (var element in khichiqLeadsCreateNewThirtysixModelObj.dropdownItemList5) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { khichiqLeadsCreateNewThirtysixModelObj.tabs2ItemList.forEach((element) {element.isSelected = false;}); khichiqLeadsCreateNewThirtysixModelObj.tabs2ItemList[index].isSelected = value; notifyListeners(); } 
 }
