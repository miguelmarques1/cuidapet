import 'dart:convert';

class User {
  final String email;
  final String registerType;
  final String imgAvatar;

  User({
    required this.email,
    required this.registerType,
    required this.imgAvatar,
  });

  User.empty()
      : email = '',
        registerType = '',
        imgAvatar = '';

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'registerType': registerType,
      'imgAvatar': imgAvatar,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      email: map['email'] ?? '',
      registerType: map['registerType'] ?? '',
      imgAvatar: map['imgAvatar'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
