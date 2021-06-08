import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_wellbeing_protocol/core/models/community.dart';
import 'package:the_wellbeing_protocol/core/models/user.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@immutable
@freezed
class AppState with _$AppState {
  @JsonSerializable(explicitToJson: true)
  const factory AppState({
    required User user,
    required Community community,
    @Default(false) @JsonKey(ignore: true) bool isHandling,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  factory AppState.initial() => AppState(
        user: User.initial(),
        community: Community.initial(),
      );

  const AppState._();
}
