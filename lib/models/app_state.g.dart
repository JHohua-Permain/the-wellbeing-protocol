// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$_$_AppStateFromJson(Map<String, dynamic> json) {
  return _$_AppState(
    user: User.fromJson(json['user'] as Map<String, dynamic>),
    community: Community.fromJson(json['community'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'community': instance.community.toJson(),
    };
