import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_hifi_eleven_model.dart';import '../models/tabs16_item_model.dart';/// A provider class for the KhichiqLeadsCreateNewHifiElevenScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewHifiElevenScreen, including the
/// current khichiqLeadsCreateNewHifiElevenModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewHifiElevenProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

TextEditingController frameSeventyFiveController = TextEditingController();

TextEditingController typehereController = TextEditingController();

KhichiqLeadsCreateNewHifiElevenModel khichiqLeadsCreateNewHifiElevenModelObj = KhichiqLeadsCreateNewHifiElevenModel();

@override void dispose() { super.dispose(); nameController.dispose(); mobileNumberController.dispose(); frameSeventyFiveController.dispose(); typehereController.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewHifiElevenModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in khichiqLeadsCreateNewHifiElevenModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected2(dynamic value) { for (var element in khichiqLeadsCreateNewHifiElevenModelObj.dropdownItemList2) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected3(dynamic value) { for (var element in khichiqLeadsCreateNewHifiElevenModelObj.dropdownItemList3) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected4(dynamic value) { for (var element in khichiqLeadsCreateNewHifiElevenModelObj.dropdownItemList4) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected5(dynamic value) { for (var element in khichiqLeadsCreateNewHifiElevenModelObj.dropdownItemList5) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { khichiqLeadsCreateNewHifiElevenModelObj.tabs16ItemList.forEach((element) {element.isSelected = false;}); khichiqLeadsCreateNewHifiElevenModelObj.tabs16ItemList[index].isSelected = value; notifyListeners(); } 
 }
