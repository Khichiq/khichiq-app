import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_hifi_fifteen_model.dart';import '../models/tabs22_item_model.dart';/// A provider class for the KhichiqLeadsCreateNewHifiFifteenScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewHifiFifteenScreen, including the
/// current khichiqLeadsCreateNewHifiFifteenModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewHifiFifteenProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

TextEditingController frameSeventyFiveController = TextEditingController();

TextEditingController typehereController = TextEditingController();

KhichiqLeadsCreateNewHifiFifteenModel khichiqLeadsCreateNewHifiFifteenModelObj = KhichiqLeadsCreateNewHifiFifteenModel();

@override void dispose() { super.dispose(); nameController.dispose(); mobileNumberController.dispose(); frameSeventyFiveController.dispose(); typehereController.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewHifiFifteenModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in khichiqLeadsCreateNewHifiFifteenModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected2(dynamic value) { for (var element in khichiqLeadsCreateNewHifiFifteenModelObj.dropdownItemList2) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected3(dynamic value) { for (var element in khichiqLeadsCreateNewHifiFifteenModelObj.dropdownItemList3) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected4(dynamic value) { for (var element in khichiqLeadsCreateNewHifiFifteenModelObj.dropdownItemList4) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected5(dynamic value) { for (var element in khichiqLeadsCreateNewHifiFifteenModelObj.dropdownItemList5) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { khichiqLeadsCreateNewHifiFifteenModelObj.tabs22ItemList.forEach((element) {element.isSelected = false;}); khichiqLeadsCreateNewHifiFifteenModelObj.tabs22ItemList[index].isSelected = value; notifyListeners(); } 
 }
