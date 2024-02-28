import 'dart:convert';import 'dart:ui';import 'package:flutter/scheduler.dart';import 'package:shared_preferences/shared_preferences.dart';import 'package:vtracku_s_application6/data/models/authenticatePost/post_authenticate_post_resp.dart';
// ignore_for_file: must_be_immutable
class PrefUtils {PrefUtils() { SharedPreferences.getInstance().then((value) {_sharedPreferences = value;}); }

static SharedPreferences? _sharedPreferences;

Future<void> init() async  { _sharedPreferences ??= await SharedPreferences.getInstance(); print('SharedPreference Initialized'); } 
///will clear all the data stored in preference
void clearPreferencesData() async  { _sharedPreferences!.clear(); } 
Future<void> setThemeData(String value) { return _sharedPreferences!.setString('themeData', value); } 
String getThemeData() { try {return _sharedPreferences!.getString('themeData')!;} catch (e) {return 'primary';} } 
Future<void> setBusinessName(String value) { return _sharedPreferences!.setString('businessName', value); } 
String getBusinessName() { try {return _sharedPreferences!.getString('businessName') ?? '';} catch (e) {return '';} } 
Future<void> setFullName(String value) { return _sharedPreferences!.setString('fullName', value); } 
String getFullName() { try {return _sharedPreferences!.getString('fullName') ?? '';} catch (e) {return '';} } 
Future<void> setAddress(String value) { return _sharedPreferences!.setString('address', value); } 
String getAddress() { try {return _sharedPreferences!.getString('address') ?? '';} catch (e) {return '';} } 
Future<void> setEmail(String value) { return _sharedPreferences!.setString('email', value); } 
String getEmail() { try {return _sharedPreferences!.getString('email') ?? '';} catch (e) {return '';} } 
Future<void> setPhoneNumber(String value) { return _sharedPreferences!.setString('phoneNumber', value); } 
String getPhoneNumber() { try {return _sharedPreferences!.getString('phoneNumber') ?? '';} catch (e) {return '';} } 
Future<void> setDateOfBirth(String value) { return _sharedPreferences!.setString('dateOfBirth', value); } 
String getDateOfBirth() { try {return _sharedPreferences!.getString('dateOfBirth') ?? '';} catch (e) {return '';} } 
Future<void> setGender(String value) { return _sharedPreferences!.setString('gender', value); } 
String getGender() { try {return _sharedPreferences!.getString('gender') ?? '';} catch (e) {return '';} } 
Future<void> setRole(String value) { return _sharedPreferences!.setString('role', value); } 
String getRole() { try {return _sharedPreferences!.getString('role') ?? '';} catch (e) {return '';} } 
Future<void> setReferralCode(String value) { return _sharedPreferences!.setString('referralCode', value); } 
String getReferralCode() { try {return _sharedPreferences!.getString('referralCode') ?? '';} catch (e) {return '';} } 
Future<void> setUserSkillsList(List<UserSkillMappingDtoList>? value) { return _sharedPreferences!.setString('userSkillsList', jsonEncode(value)); } 
List<UserSkillMappingDtoList>? getUserSkillsList() { try {var jsonData = jsonDecode(_sharedPreferences!.getString('userSkillsList') ?? ''); return (jsonData as List).map((e) => UserSkillMappingDtoList.fromJson(e)).toList();} catch (e) {return null;} } 
Future<void> setAccessToken(String value) { return _sharedPreferences!.setString('accessToken', value); } 
String getAccessToken() { try {return _sharedPreferences!.getString('accessToken') ?? '';} catch (e) {return '';} } 
Future<void> setRefreshToken(String value) { return _sharedPreferences!.setString('refreshToken',value); } 
String getRefreshToken() { try {
return _sharedPreferences!.getString('refreshToken') ?? '';
} catch (e) {
return '';
} } 
 }
