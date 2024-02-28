import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_hifi_twelve_model.dart';import '../models/tabs20_item_model.dart';/// A provider class for the KhichiqLeadsCreateNewHifiTwelveScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewHifiTwelveScreen, including the
/// current khichiqLeadsCreateNewHifiTwelveModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewHifiTwelveProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

TextEditingController frameSeventyFiveController = TextEditingController();

TextEditingController typehereController = TextEditingController();

KhichiqLeadsCreateNewHifiTwelveModel khichiqLeadsCreateNewHifiTwelveModelObj = KhichiqLeadsCreateNewHifiTwelveModel();

@override void dispose() { super.dispose(); nameController.dispose(); mobileNumberController.dispose(); frameSeventyFiveController.dispose(); typehereController.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewHifiTwelveModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in khichiqLeadsCreateNewHifiTwelveModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected2(dynamic value) { for (var element in khichiqLeadsCreateNewHifiTwelveModelObj.dropdownItemList2) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected3(dynamic value) { for (var element in khichiqLeadsCreateNewHifiTwelveModelObj.dropdownItemList3) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected4(dynamic value) { for (var element in khichiqLeadsCreateNewHifiTwelveModelObj.dropdownItemList4) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected5(dynamic value) { for (var element in khichiqLeadsCreateNewHifiTwelveModelObj.dropdownItemList5) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { khichiqLeadsCreateNewHifiTwelveModelObj.tabs20ItemList.forEach((element) {element.isSelected = false;}); khichiqLeadsCreateNewHifiTwelveModelObj.tabs20ItemList[index].isSelected = value; notifyListeners(); } 
 }
