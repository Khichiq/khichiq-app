import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_fortyfive_model.dart';import '../models/tabs10_item_model.dart';/// A provider class for the KhichiqLeadsCreateNewFortyfiveScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewFortyfiveScreen, including the
/// current khichiqLeadsCreateNewFortyfiveModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewFortyfiveProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController nameController1 = TextEditingController();

TextEditingController nameController2 = TextEditingController();

TextEditingController headerController = TextEditingController();

TextEditingController sankalpKController = TextEditingController();

TextEditingController priceController = TextEditingController();

TextEditingController paidController = TextEditingController();

TextEditingController cALENDERController = TextEditingController();

KhichiqLeadsCreateNewFortyfiveModel khichiqLeadsCreateNewFortyfiveModelObj = KhichiqLeadsCreateNewFortyfiveModel();

bool markasPaid = false;

bool markasPaid1 = false;

bool markasPaid2 = false;

@override void dispose() { super.dispose(); nameController.dispose(); nameController1.dispose(); nameController2.dispose(); headerController.dispose(); sankalpKController.dispose(); priceController.dispose(); paidController.dispose(); cALENDERController.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfiveModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfiveModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected2(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfiveModelObj.dropdownItemList2) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected3(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfiveModelObj.dropdownItemList3) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected4(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfiveModelObj.dropdownItemList4) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected5(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfiveModelObj.dropdownItemList5) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected6(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfiveModelObj.dropdownItemList6) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected7(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfiveModelObj.dropdownItemList7) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected8(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfiveModelObj.dropdownItemList8) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected9(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfiveModelObj.dropdownItemList9) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { khichiqLeadsCreateNewFortyfiveModelObj.tabs10ItemList.forEach((element) {element.isSelected = false;}); khichiqLeadsCreateNewFortyfiveModelObj.tabs10ItemList[index].isSelected = value; notifyListeners(); } 
void changeCheckBox1(bool value) { markasPaid = value; notifyListeners(); } 
void changeCheckBox2(bool value) { markasPaid1 = value; notifyListeners(); } 
void changeCheckBox3(bool value) { markasPaid2 = value; notifyListeners(); } 
 }
