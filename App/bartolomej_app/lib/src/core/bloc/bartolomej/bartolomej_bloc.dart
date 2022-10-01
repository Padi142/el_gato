import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:template_app/src/core/bloc/bartolomej/bartolomej_state.dart';
import 'package:template_app/src/core/models/mood_model.dart';
import 'package:template_app/src/core/provider/bartolomej_provider.dart';

part 'bartolomej_event.dart';

class BartolomejBloc extends Bloc<BartolomejEvent, BartolomejState> {
  BartolomejBloc() : super(const BartolomejState.initial()) {
    on<ChangeFace>(_onChangeFace);
    on<ChangeIp>(_onChangeIp);
    on<ChangeBottomText>(_onChangeBottomText);
  }
  BartolomejProvider bartolomejProvider = BartolomejProvider();

  _onChangeFace(ChangeFace event, Emitter<BartolomejState> emit) async {
    String ip = await bartolomejProvider.getBartolomejIP();
    if (ip == "error") {
      return;
    }
    await bartolomejProvider.changeFace(ip, event.face.faceId);
    await bartolomejProvider.changeBottomText(ip, event.face.message);
  }

  _onChangeBottomText(
      ChangeBottomText event, Emitter<BartolomejState> emit) async {
    String ip = await bartolomejProvider.getBartolomejIP();
    if (ip == "error") {
      return;
    }
    await bartolomejProvider.changeBottomText(ip, event.text);
  }

  _onChangeIp(ChangeIp event, Emitter<BartolomejState> emit) async {
    await bartolomejProvider.saveIp(event.ip);
  }
}
