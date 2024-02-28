import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_fortyfour_model.dart';import '../models/tabs6_item_model.dart';/// A provider class for the KhichiqLeadsCreateNewFortyfourScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewFortyfourScreen, including the
/// current khichiqLeadsCreateNewFortyfourModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewFortyfourProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController nameController1 = TextEditingController();

TextEditingController nameController2 = TextEditingController();

TextEditingController selectController = TextEditingController();

TextEditingController priceController = TextEditingController();

TextEditingController amountController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController amountController1 = TextEditingController();

TextEditingController frameSeventyFiveController = TextEditingController();

TextEditingController typehereController = TextEditingController();

KhichiqLeadsCreateNewFortyfourModel khichiqLeadsCreateNewFortyfourModelObj = KhichiqLeadsCreateNewFortyfourModel();

bool markasPaid = false;

bool markasPaid1 = false;

bool markasPaid2 = false;

@override void dispose() { super.dispose(); nameController.dispose(); nameController1.dispose(); nameController2.dispose(); selectController.dispose(); priceController.dispose(); amountController.dispose(); dateController.dispose(); amountController1.dispose(); frameSeventyFiveController.dispose(); typehereController.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfourModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfourModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected2(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfourModelObj.dropdownItemList2) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected3(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfourModelObj.dropdownItemList3) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected4(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfourModelObj.dropdownItemList4) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected5(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfourModelObj.dropdownItemList5) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected6(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfourModelObj.dropdownItemList6) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected7(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfourModelObj.dropdownItemList7) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected8(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfourModelObj.dropdownItemList8) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected9(dynamic value) { for (var element in khichiqLeadsCreateNewFortyfourModelObj.dropdownItemList9) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { khichiqLeadsCreateNewFortyfourModelObj.tabs6ItemList.forEach((element) {element.isSelected = false;}); khichiqLeadsCreateNewFortyfourModelObj.tabs6ItemList[index].isSelected = value; notifyListeners(); } 
void changeCheckBox1(bool value) { markasPaid = value; notifyListeners(); } 
void changeCheckBox2(bool value) { markasPaid1 = value; notifyListeners(); } 
void changeCheckBox3(bool value) { markasPaid2 = value; notifyListeners(); } 
 }
