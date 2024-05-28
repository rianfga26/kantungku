import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable()
class LoginForm{
  LoginForm({required this.email, required this.password});

  String email;
  String password;
  

  factory LoginForm.fromJson(Map<String, dynamic> json) => _$LoginFormFromJson(json);

  Map<String, dynamic> toJson() => _$LoginFormToJson(this);


}