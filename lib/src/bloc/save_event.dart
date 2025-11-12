import 'package:equatable/equatable.dart';

abstract class SaveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SubmitSaveEvent extends SaveEvent {
  final String name;
  final String phone;
  final String amount;
  final String narration;
  final String pin;

  SubmitSaveEvent({
    required this.name,
    required this.phone,
    required this.amount,
    required this.narration,
    required this.pin,
  });

  @override
  List<Object?> get props => [name, phone, amount, narration, pin];
}

class SubmitSaveScreenTwoEvent extends SaveEvent{
  final String amount;
  final String narration;
  final String pin;

  SubmitSaveScreenTwoEvent({
    required this.amount,
    required this.narration,
    required this.pin,
  });
  @override
  List<Object?> get props => [amount, narration, pin];
}