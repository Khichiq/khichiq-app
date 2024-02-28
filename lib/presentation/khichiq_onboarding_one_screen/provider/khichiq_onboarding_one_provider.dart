import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_onboarding_one_model.dart';import '../models/builtforyou_item_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:vtracku_s_application6/data/models/authenticatePost/post_authenticate_post_resp.dart';import 'package:vtracku_s_application6/data/models/authenticatePost/post_authenticate_post_req.dart';import 'dart:async';import 'package:vtracku_s_application6/data/repository/repository.dart';/// A provider class for the KhichiqOnboardingOneScreen.
///
/// This provider manages the state of the KhichiqOnboardingOneScreen, including the
/// current khichiqOnboardingOneModelObj

// ignore_for_file: must_be_immutable
class KhichiqOnboardingOneProvider extends ChangeNotifier {TextEditingController phoneNumberController = TextEditingController();

KhichiqOnboardingOneModel khichiqOnboardingOneModelObj = KhichiqOnboardingOneModel();

int sliderIndex = 0;

Country? selectedCountry;

final _repository = Repository();

var postAuthenticatePostResp = PostAuthenticatePostResp();

@override void dispose() { super.dispose(); phoneNumberController.dispose(); } 
void changeCountry(Country value) { selectedCountry = value; notifyListeners(); } 
FutureOr<void> callAuthenticatePost({Function? onError}) async  { var postAuthenticatePostReq = PostAuthenticatePostReq(

);
await _repository.authenticatePost(
headers: {'Content-type': 'application/json',},
requestData: postAuthenticatePostReq.toJson(),
)
.then((value) async {

	postAuthenticatePostResp = value;
_onAuthenticatePostSuccess(value);
notifyListeners();
})
.onError((error,stackTrace) {

	//implement error call
_onAuthenticatePostError();
onError?.call();
})
; } 
void _onAuthenticatePostSuccess(PostAuthenticatePostResp resp) { 
PrefUtils().setBusinessName(resp.userDto?.businessName ?? '');PrefUtils().setFullName(resp.userDto?.fullName ?? '');PrefUtils().setAddress(resp.userDto?.address ?? '');PrefUtils().setEmail(resp.userDto?.email ?? '');PrefUtils().setPhoneNumber(resp.userDto?.phoneNumber ?? '');PrefUtils().setDateOfBirth(resp.userDto?.dateOfBirth ?? '');PrefUtils().setGender(resp.userDto?.gender ?? '');PrefUtils().setRole(resp.userDto?.role ?? '');PrefUtils().setReferralCode(resp.userDto?.referralCode ?? '');PrefUtils().setUserSkillsList(resp.userSkillMappingDtoList!);PrefUtils().setAccessToken(resp.accessToken ?? '');PrefUtils().setRefreshToken(resp.refreshToken ?? ''); } 
void _onAuthenticatePostError() { 
 //implement error method body...
 } 
 }
