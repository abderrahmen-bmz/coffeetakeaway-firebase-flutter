import 'package:coffeetakeaway/enums/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'firestore_user.g.dart';

@JsonSerializable()
class FirestoreUser {
  const FirestoreUser({
    required this.roles,
  });

  final List<UserRole> roles;

  bool get isCustomer => roles.contains(UserRole.customer);
  bool get isAdmin => roles.contains(UserRole.admin);

  factory FirestoreUser.fromJson(Map<String, dynamic> json) =>
      _$FirestoreUserFromJson(json);

  Map<String, dynamic> toJson() => _$FirestoreUserToJson(this);
}
