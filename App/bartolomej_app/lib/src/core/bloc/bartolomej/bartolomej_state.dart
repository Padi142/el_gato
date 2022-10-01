import 'package:freezed_annotation/freezed_annotation.dart';

part 'bartolomej_state.freezed.dart';

@freezed
class BartolomejState with _$BartolomejState {
  const factory BartolomejState.initial() = Initial;
  const factory BartolomejState.loaded() = Loaded;
}
