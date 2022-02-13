import 'package:flutter/foundation.dart';

enum UserRole {
  admin,
  customer,
  unknown,
}

extension UserRoleExtension on UserRole {
  String get name {
    return describeEnum(this);
  }
}
