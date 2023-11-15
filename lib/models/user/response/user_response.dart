import 'dart:convert';

class User {
  String? username;
  String? email;
  String? password;
  String? address;
  String? type;
  String? id;
  String? token;
  User({
    this.username,
    this.email,
    this.password,
    this.address,
    this.type,
    this.id,
    this.token,
  });

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    password = json['password'];
    address = json['address'];
    type = json['type'];
    id = json['_id'];
    token = json['token'];
  }

  User copyWith({
    String? username,
    String? email,
    String? password,
    String? address,
    String? type,
    String? id,
    String? token,
  }) {
    return User(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      address: address ?? this.address,
      type: type ?? this.type,
      id: id ?? this.id,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['email'] = email;
    data['password'] = password;
    data['address'] = address;
    data['type'] = type;
    data['_id'] = id;
    data['token'] = token;
    return data;
  }

  factory User.fromRawJson(String source) =>
      User.fromJson(json.decode(source) as Map<String, dynamic>);
}
