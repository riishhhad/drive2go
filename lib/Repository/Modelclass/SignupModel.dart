
class SignupModel {
  String? fullName;
  String? email;
  String? phone;
  dynamic profilePhoto;
  dynamic fcmToken;
  dynamic resetPasswordToken;
  dynamic resetPasswordExpires;
  String? id;
  int? v;

  SignupModel({this.fullName, this.email, this.phone, this.profilePhoto, this.fcmToken, this.resetPasswordToken, this.resetPasswordExpires, this.id, this.v});

  SignupModel.fromJson(Map<String, dynamic> json) {
    fullName = json["fullName"];
    email = json["email"];
    phone = json["phone"];
    profilePhoto = json["profilePhoto"];
    fcmToken = json["fcmToken"];
    resetPasswordToken = json["resetPasswordToken"];
    resetPasswordExpires = json["resetPasswordExpires"];
    id = json["_id"];
    v = json["__v"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["fullName"] = fullName;
    _data["email"] = email;
    _data["phone"] = phone;
    _data["profilePhoto"] = profilePhoto;
    _data["fcmToken"] = fcmToken;
    _data["resetPasswordToken"] = resetPasswordToken;
    _data["resetPasswordExpires"] = resetPasswordExpires;
    _data["_id"] = id;
    _data["__v"] = v;
    return _data;
  }
}