class PostAuthenticatePostResp {
  UserDto? userDto;
  BusinessDto? businessDto;
  List<UserSkillMappingDtoList>? userSkillMappingDtoList;
  String? cognitoIdentityId;
  OpenTokenId? openTokenId;
  String? accessToken;
  String? refreshToken;

  PostAuthenticatePostResp(
      {this.userDto,
      this.businessDto,
      this.userSkillMappingDtoList,
      this.cognitoIdentityId,
      this.openTokenId,
      this.accessToken,
      this.refreshToken});

  PostAuthenticatePostResp.fromJson(Map<String, dynamic> json) {
    userDto =
        json['userDto'] != null ? UserDto.fromJson(json['userDto']) : null;
    businessDto = json['businessDto'] != null
        ? BusinessDto.fromJson(json['businessDto'])
        : null;
    if (json['userSkillMappingDtoList'] != null) {
      userSkillMappingDtoList = <UserSkillMappingDtoList>[];
      json['userSkillMappingDtoList'].forEach((v) {
        userSkillMappingDtoList?.add(UserSkillMappingDtoList.fromJson(v));
      });
    }
    cognitoIdentityId = json['cognitoIdentityId'];
    openTokenId = json['openTokenId'] != null
        ? OpenTokenId.fromJson(json['openTokenId'])
        : null;
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (userDto != null) {
      data['userDto'] = userDto?.toJson();
    }
    if (businessDto != null) {
      data['businessDto'] = businessDto?.toJson();
    }
    if (userSkillMappingDtoList != null) {
      data['userSkillMappingDtoList'] =
          userSkillMappingDtoList?.map((v) => v.toJson()).toList();
    }
    if (cognitoIdentityId != null) {
      data['cognitoIdentityId'] = cognitoIdentityId;
    }
    if (openTokenId != null) {
      data['openTokenId'] = openTokenId?.toJson();
    }
    if (accessToken != null) {
      data['access_token'] = accessToken;
    }
    if (refreshToken != null) {
      data['refresh_token'] = refreshToken;
    }
    return data;
  }
}

class UserDto {
  String? businessName;
  String? fullName;
  String? address;
  String? email;
  dynamic password;
  String? phoneNumber;
  dynamic alternateNumber;
  String? dateOfBirth;
  dynamic website;
  dynamic instagram;
  dynamic profilePhotoUrl;
  String? gender;
  dynamic usertype;
  Business? business;
  String? role;
  String? referralCode;
  dynamic pincode;
  dynamic state;
  dynamic userSkillMappingDtoList;
  int? id;

  UserDto(
      {this.businessName,
      this.fullName,
      this.address,
      this.email,
      this.password,
      this.phoneNumber,
      this.alternateNumber,
      this.dateOfBirth,
      this.website,
      this.instagram,
      this.profilePhotoUrl,
      this.gender,
      this.usertype,
      this.business,
      this.role,
      this.referralCode,
      this.pincode,
      this.state,
      this.userSkillMappingDtoList,
      this.id});

  UserDto.fromJson(Map<String, dynamic> json) {
    businessName = json['businessName'];
    fullName = json['fullName'];
    address = json['address'];
    email = json['email'];
    password = json['password'];
    phoneNumber = json['phoneNumber'];
    alternateNumber = json['alternateNumber'];
    dateOfBirth = json['dateOfBirth'];
    website = json['website'];
    instagram = json['instagram'];
    profilePhotoUrl = json['profilePhotoUrl'];
    gender = json['gender'];
    usertype = json['usertype'];
    business =
        json['business'] != null ? Business.fromJson(json['business']) : null;
    role = json['role'];
    referralCode = json['referralCode'];
    pincode = json['pincode'];
    state = json['state'];
    userSkillMappingDtoList = json['userSkillMappingDtoList'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (businessName != null) {
      data['businessName'] = businessName;
    }
    if (fullName != null) {
      data['fullName'] = fullName;
    }
    if (address != null) {
      data['address'] = address;
    }
    if (email != null) {
      data['email'] = email;
    }
    if (password != null) {
      data['password'] = password;
    }
    if (phoneNumber != null) {
      data['phoneNumber'] = phoneNumber;
    }
    if (alternateNumber != null) {
      data['alternateNumber'] = alternateNumber;
    }
    if (dateOfBirth != null) {
      data['dateOfBirth'] = dateOfBirth;
    }
    if (website != null) {
      data['website'] = website;
    }
    if (instagram != null) {
      data['instagram'] = instagram;
    }
    if (profilePhotoUrl != null) {
      data['profilePhotoUrl'] = profilePhotoUrl;
    }
    if (gender != null) {
      data['gender'] = gender;
    }
    if (usertype != null) {
      data['usertype'] = usertype;
    }
    if (business != null) {
      data['business'] = business?.toJson();
    }
    if (role != null) {
      data['role'] = role;
    }
    if (referralCode != null) {
      data['referralCode'] = referralCode;
    }
    if (pincode != null) {
      data['pincode'] = pincode;
    }
    if (state != null) {
      data['state'] = state;
    }
    if (userSkillMappingDtoList != null) {
      data['userSkillMappingDtoList'] = userSkillMappingDtoList;
    }
    if (id != null) {
      data['id'] = id;
    }
    return data;
  }
}

class Business {
  bool? status;
  String? createdBy;
  String? createdDate;
  String? updatedBy;
  String? updatedDate;
  int? id;
  String? businessName;
  String? businessContactNumber;
  String? businessEmail;
  String? address;
  String? businessPhotoUrl;
  List? users;

  Business(
      {this.status,
      this.createdBy,
      this.createdDate,
      this.updatedBy,
      this.updatedDate,
      this.id,
      this.businessName,
      this.businessContactNumber,
      this.businessEmail,
      this.address,
      this.businessPhotoUrl,
      this.users});

  Business.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    createdBy = json['createdBy'];
    createdDate = json['createdDate'];
    updatedBy = json['updatedBy'];
    updatedDate = json['updatedDate'];
    id = json['id'];
    businessName = json['businessName'];
    businessContactNumber = json['businessContactNumber'];
    businessEmail = json['businessEmail'];
    address = json['address'];
    businessPhotoUrl = json['businessPhotoUrl'];
    if (json['users'] != null) {
      users = [];
      json['users'].forEach((v) {
        users?.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (status != null) {
      data['status'] = status;
    }
    if (createdBy != null) {
      data['createdBy'] = createdBy;
    }
    if (createdDate != null) {
      data['createdDate'] = createdDate;
    }
    if (updatedBy != null) {
      data['updatedBy'] = updatedBy;
    }
    if (updatedDate != null) {
      data['updatedDate'] = updatedDate;
    }
    if (id != null) {
      data['id'] = id;
    }
    if (businessName != null) {
      data['businessName'] = businessName;
    }
    if (businessContactNumber != null) {
      data['businessContactNumber'] = businessContactNumber;
    }
    if (businessEmail != null) {
      data['businessEmail'] = businessEmail;
    }
    if (address != null) {
      data['address'] = address;
    }
    if (businessPhotoUrl != null) {
      data['businessPhotoUrl'] = businessPhotoUrl;
    }
    if (users != null) {
      data['users'] = users?.map((v) => v).toList();
    }
    return data;
  }
}

class BusinessDto {
  String? businessName;
  String? businessContactNumber;
  String? businessEmail;
  String? address;
  String? businessPhotoUrl;
  dynamic createdAt;
  dynamic updatedAt;
  int? id;

  BusinessDto(
      {this.businessName,
      this.businessContactNumber,
      this.businessEmail,
      this.address,
      this.businessPhotoUrl,
      this.createdAt,
      this.updatedAt,
      this.id});

  BusinessDto.fromJson(Map<String, dynamic> json) {
    businessName = json['businessName'];
    businessContactNumber = json['businessContactNumber'];
    businessEmail = json['businessEmail'];
    address = json['address'];
    businessPhotoUrl = json['businessPhotoUrl'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (businessName != null) {
      data['businessName'] = businessName;
    }
    if (businessContactNumber != null) {
      data['businessContactNumber'] = businessContactNumber;
    }
    if (businessEmail != null) {
      data['businessEmail'] = businessEmail;
    }
    if (address != null) {
      data['address'] = address;
    }
    if (businessPhotoUrl != null) {
      data['businessPhotoUrl'] = businessPhotoUrl;
    }
    if (createdAt != null) {
      data['createdAt'] = createdAt;
    }
    if (updatedAt != null) {
      data['updatedAt'] = updatedAt;
    }
    if (id != null) {
      data['id'] = id;
    }
    return data;
  }
}

class UserSkillMappingDtoList {
  String? skill;
  int? charages;
  String? duration;

  UserSkillMappingDtoList({this.skill, this.charages, this.duration});

  UserSkillMappingDtoList.fromJson(Map<String, dynamic> json) {
    skill = json['skill'];
    charages = json['charages'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (skill != null) {
      data['skill'] = skill;
    }
    if (charages != null) {
      data['charages'] = charages;
    }
    if (duration != null) {
      data['duration'] = duration;
    }
    return data;
  }
}

class OpenTokenId {
  String? secretKey;
  String? accessKey;
  String? sessionToken;
  String? mycustauth;

  OpenTokenId(
      {this.secretKey, this.accessKey, this.sessionToken, this.mycustauth});

  OpenTokenId.fromJson(Map<String, dynamic> json) {
    secretKey = json['secretKey'];
    accessKey = json['accessKey'];
    sessionToken = json['sessionToken'];
    mycustauth = json['mycustauth'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (secretKey != null) {
      data['secretKey'] = secretKey;
    }
    if (accessKey != null) {
      data['accessKey'] = accessKey;
    }
    if (sessionToken != null) {
      data['sessionToken'] = sessionToken;
    }
    if (mycustauth != null) {
      data['mycustauth'] = mycustauth;
    }
    return data;
  }
}
