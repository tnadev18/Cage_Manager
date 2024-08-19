// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? firstname,
    String? lastName,
  })  : _firstname = firstname,
        _lastName = lastName;

  // "Firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? 'firstname';
  set firstname(String? val) => _firstname = val;

  bool hasFirstname() => _firstname != null;

  // "LastName" field.
  String? _lastName;
  String get lastName => _lastName ?? 'lastname';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        firstname: data['Firstname'] as String?,
        lastName: data['LastName'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Firstname': _firstname,
        'LastName': _lastName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Firstname': serializeParam(
          _firstname,
          ParamType.String,
        ),
        'LastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        firstname: deserializeParam(
          data['Firstname'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['LastName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        firstname == other.firstname &&
        lastName == other.lastName;
  }

  @override
  int get hashCode => const ListEquality().hash([firstname, lastName]);
}

UserStruct createUserStruct({
  String? firstname,
  String? lastName,
}) =>
    UserStruct(
      firstname: firstname,
      lastName: lastName,
    );
