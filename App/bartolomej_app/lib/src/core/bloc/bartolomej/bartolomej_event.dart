part of 'bartolomej_bloc.dart';

abstract class BartolomejEvent extends Equatable {
  const BartolomejEvent();

  @override
  List<Object> get props => [];
}

class LoadStatus extends BartolomejEvent {
  const LoadStatus();

  @override
  List<Object> get props => [];
}

class ChangeFace extends BartolomejEvent {
  final MoodModel face;
  const ChangeFace({required this.face});

  @override
  List<Object> get props => [];
}

class ChangeBottomText extends BartolomejEvent {
  final String text;
  const ChangeBottomText({required this.text});

  @override
  List<Object> get props => [];
}

class ChangeIp extends BartolomejEvent {
  final String ip;
  const ChangeIp({required this.ip});

  @override
  List<Object> get props => [];
}
