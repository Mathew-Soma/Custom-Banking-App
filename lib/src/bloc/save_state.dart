import 'package:equatable/equatable.dart';

abstract class SaveState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SaveInitial extends SaveState {}

class SaveLoading extends SaveState {}

class SaveSuccess extends SaveState {
  final String message;
  SaveSuccess(this.message);

  @override
  List<Object?> get props => [message];
}

class SaveFailure extends SaveState {
  final String error;
  SaveFailure(this.error);

  @override
  List<Object?> get props => [error];
}
