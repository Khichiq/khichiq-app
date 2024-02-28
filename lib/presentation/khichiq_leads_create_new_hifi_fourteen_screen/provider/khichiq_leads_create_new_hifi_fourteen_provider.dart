import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_hifi_fourteen_model.dart';import '../models/tabs14_item_model.dart';/// A provider class for the KhichiqLeadsCreateNewHifiFourteenScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewHifiFourteenScreen, including the
/// current khichiqLeadsCreateNewHifiFourteenModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewHifiFourteenProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

TextEditingController frameSeventyFiveController = TextEditingController();

TextEditingController typehereController = TextEditingController();

KhichiqLeadsCreateNewHifiFourteenModel khichiqLeadsCreateNewHifiFourteenModelObj = KhichiqLeadsCreateNewHifiFourteenModel();

@override void dispose() { super.dispose(); nameController.dispose(); mobileNumberController.dispose(); frameSeventyFiveController.dispose(); typehereController.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewHifiFourteenModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in khichiqLeadsCreateNewHifiFourteenModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected2(dynamic value) { for (var element in khichiqLeadsCreateNewHifiFourteenModelObj.dropdownItemList2) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected3(dynamic value) { for (var element in khichiqLeadsCreateNewHifiFourteenModelObj.dropdownItemList3) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected4(dynamic value) { for (var element in khichiqLeadsCreateNewHifiFourteenModelObj.dropdownItemList4) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected5(dynamic value) { for (var element in khichiqLeadsCreateNewHifiFourteenModelObj.dropdownItemList5) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { khichiqLeadsCreateNewHifiFourteenModelObj.tabs14ItemList.forEach((element) {element.isSelected = false;}); khichiqLeadsCreateNewHifiFourteenModelObj.tabs14ItemList[index].isSelected = value; notifyListeners(); } 
 }
