import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final String id;
  final String username;
  final String password;
  final String address;
  final String usertype;
  final String email;
  const User({
    required this.id,
    required this.username,
    required this.password,
    required this.address,
    required this.usertype,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'password': password,
      'address': address,
      'usertype': usertype,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: (map["id"] ?? '') as String,
      username: (map["username"] ?? '') as String,
      password: (map["password"] ?? '') as String,
      address: (map["address"] ?? '') as String,
      usertype: (map["usertype"] ?? '') as String,
      email: (map["email"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  User copyWith({
    String? id,
    String? username,
    String? password,
    String? address,
    String? usertype,
    String? email,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      password: password ?? this.password,
      address: address ?? this.address,
      usertype: usertype ?? this.usertype,
      email: email ?? this.email,
    );
  }
}
