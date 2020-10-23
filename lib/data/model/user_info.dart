import 'package:json_annotation/json_annotation.dart';
part 'user_info.g.dart';

@JsonSerializable()
class UserInfo {
  String fullName;
  String email;

  UserInfo({this.fullName, this.email});

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}