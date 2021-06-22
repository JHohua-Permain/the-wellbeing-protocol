import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_wellbeing_protocol/core/states/auth_state.dart';
import 'package:the_wellbeing_protocol/core/states/community.dart';
import 'package:the_wellbeing_protocol/core/states/user.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@immutable
@freezed
class AppState with _$AppState {
  const factory AppState({
    required User user,
    required Community community,
    @Default(AuthState.initial()) @JsonKey(ignore: true) AuthState authState,
    @Default(false) @JsonKey(ignore: true) bool isHandling,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  factory AppState.initial() => AppState(
        user: User.initial(),
        community: Community.initial(),
      );

  const AppState._();

  bool get authenticated => (authState is Authenticated);
}
