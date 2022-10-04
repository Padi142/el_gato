import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_app/src/core/models/status_model.dart';

part 'bartolomej_state.freezed.dart';

@freezed
class BartolomejState with _$BartolomejState {
  const factory BartolomejState.initial() = Initial;
  const factory BartolomejState.loading() = Loading;
  const factory BartolomejState.loadingError() = LoadingError;
  const factory BartolomejState.loadedStatus(StatusModel status) = LoadedSTatus;
}
