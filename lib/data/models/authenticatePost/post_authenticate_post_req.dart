class PostAuthenticatePostReq {
  String? phoneNumber;
  String? otp;
  String? fcmToken;
  String? notificationType;

  PostAuthenticatePostReq(
      {this.phoneNumber, this.otp, this.fcmToken, this.notificationType});

  PostAuthenticatePostReq.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phoneNumber'];
    otp = json['otp'];
    fcmToken = json['fcmToken'];
    notificationType = json['notificationType'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (phoneNumber != null) {
      data['phoneNumber'] = phoneNumber;
    }
    if (otp != null) {
      data['otp'] = otp;
    }
    if (fcmToken != null) {
      data['fcmToken'] = fcmToken;
    }
    if (notificationType != null) {
      data['notificationType'] = notificationType;
    }
    return data;
  }
}
