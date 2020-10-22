import 'package:json_annotation/json_annotation.dart';
part 'user_info.g.dart';

@JsonSerializable()
class UserInfo {
  String fullName;
  String avatar;

  UserInfo({this.fullName, this.avatar});

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}