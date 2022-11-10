// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      name: json['name'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      passord: json['passord'] as String?,
      email: json['email'] as String?,
      isActive: json['isActive'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'passord': instance.passord,
      'email': instance.email,
      'isActive': instance.isActive,
    };
