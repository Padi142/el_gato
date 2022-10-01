import 'package:equatable/equatable.dart';

class MoodModel extends Equatable {
  final String faceId;
  final String faceName;
  final String message;

  const MoodModel({
    required this.faceId,
    required this.faceName,
    required this.message,
  });

  @override
  List<Object?> get props => [faceId, faceName];
}
