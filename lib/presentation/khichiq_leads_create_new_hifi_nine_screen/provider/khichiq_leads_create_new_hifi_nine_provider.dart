import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_hifi_nine_model.dart';import '../models/tabs24_item_model.dart';/// A provider class for the KhichiqLeadsCreateNewHifiNineScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewHifiNineScreen, including the
/// current khichiqLeadsCreateNewHifiNineModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewHifiNineProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

TextEditingController typehereController = TextEditingController();

KhichiqLeadsCreateNewHifiNineModel khichiqLeadsCreateNewHifiNineModelObj = KhichiqLeadsCreateNewHifiNineModel();

@override void dispose() { super.dispose(); nameController.dispose(); mobileNumberController.dispose(); typehereController.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewHifiNineModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in khichiqLeadsCreateNewHifiNineModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected2(dynamic value) { for (var element in khichiqLeadsCreateNewHifiNineModelObj.dropdownItemList2) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected3(dynamic value) { for (var element in khichiqLeadsCreateNewHifiNineModelObj.dropdownItemList3) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected4(dynamic value) { for (var element in khichiqLeadsCreateNewHifiNineModelObj.dropdownItemList4) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected5(dynamic value) { for (var element in khichiqLeadsCreateNewHifiNineModelObj.dropdownItemList5) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { khichiqLeadsCreateNewHifiNineModelObj.tabs24ItemList.forEach((element) {element.isSelected = false;}); khichiqLeadsCreateNewHifiNineModelObj.tabs24ItemList[index].isSelected = value; notifyListeners(); } 
 }
