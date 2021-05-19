import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_wellbeing_protocol/generated/models/community.dart';
import 'package:the_wellbeing_protocol/generated/models/user_state.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@immutable
@freezed
class AppState with _$AppState {
  factory AppState({
    required UserState userState,
    required Community community,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  factory AppState.initial() => AppState(
        userState: UserState.initial(),
        community: Community.initial(),
      );
}
