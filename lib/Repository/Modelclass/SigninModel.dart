class SigninModel {
  SigninModel({
      this.token, 
      this.id, 
      this.fullName, 
      this.email, 
      this.phone, 
      this.profilePhoto, 
      this.fcmToken, 
      this.resetPasswordToken, 
      this.resetPasswordExpires, 
      this.v,});

  SigninModel.fromJson(dynamic json) {
    token = json['token'];
    id = json['_id'];
    fullName = json['fullName'];
    email = json['email'];
    phone = json['phone'];
    profilePhoto = json['profilePhoto'];
    fcmToken = json['fcmToken'];
    resetPasswordToken = json['resetPasswordToken'];
    resetPasswordExpires = json['resetPasswordExpires'];
    v = json['__v'];
  }
  String? token;
  String? id;
  String? fullName;
  String? email;
  String? phone;
  dynamic profilePhoto;
  dynamic fcmToken;
  dynamic resetPasswordToken;
  dynamic resetPasswordExpires;
  int? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    map['_id'] = id;
    map['fullName'] = fullName;
    map['email'] = email;
    map['phone'] = phone;
    map['profilePhoto'] = profilePhoto;
    map['fcmToken'] = fcmToken;
    map['resetPasswordToken'] = resetPasswordToken;
    map['resetPasswordExpires'] = resetPasswordExpires;
    map['__v'] = v;
    return map;
  }

}