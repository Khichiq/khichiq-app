import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_fortytwo_model.dart';import '../models/tabs12_item_model.dart';/// A provider class for the KhichiqLeadsCreateNewFortytwoScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewFortytwoScreen, including the
/// current khichiqLeadsCreateNewFortytwoModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewFortytwoProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController nameController1 = TextEditingController();

TextEditingController nameController2 = TextEditingController();

KhichiqLeadsCreateNewFortytwoModel khichiqLeadsCreateNewFortytwoModelObj = KhichiqLeadsCreateNewFortytwoModel();

@override void dispose() { super.dispose(); nameController.dispose(); nameController1.dispose(); nameController2.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewFortytwoModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in khichiqLeadsCreateNewFortytwoModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected2(dynamic value) { for (var element in khichiqLeadsCreateNewFortytwoModelObj.dropdownItemList2) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected3(dynamic value) { for (var element in khichiqLeadsCreateNewFortytwoModelObj.dropdownItemList3) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected4(dynamic value) { for (var element in khichiqLeadsCreateNewFortytwoModelObj.dropdownItemList4) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected5(dynamic value) { for (var element in khichiqLeadsCreateNewFortytwoModelObj.dropdownItemList5) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected6(dynamic value) { for (var element in khichiqLeadsCreateNewFortytwoModelObj.dropdownItemList6) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { khichiqLeadsCreateNewFortytwoModelObj.tabs12ItemList.forEach((element) {element.isSelected = false;}); khichiqLeadsCreateNewFortytwoModelObj.tabs12ItemList[index].isSelected = value; notifyListeners(); } 
 }
