import 'package:DemoApp/src/data/repositories/save_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'save_event.dart';
import 'save_state.dart';

class SaveBloc extends Bloc<SaveEvent, SaveState> {
  final SaveRepository repository;

  SaveBloc(this.repository) : super(SaveInitial()) {
    on<SubmitSaveEvent>(_onSubmitSave);
    on<SubmitSaveScreenTwoEvent>(_onSubmitScreenTwo); // 👈 Add this line
  }

  // ✅ For Screen One
  Future<void> _onSubmitSave(
      SubmitSaveEvent event, Emitter<SaveState> emit) async {
    emit(SaveLoading());
    try {
      final result = await repository.saveTransfer(
        name: event.name,
        phone: event.phone,
        amount: event.amount,
        narration: event.narration,
        pin: event.pin,
      );

      if (result['success'] == true) {
        emit(SaveSuccess(result['message'] ?? 'Data saved successfully'));
      } else {
        emit(SaveFailure(result['message'] ?? 'Save failed'));
      }
    } catch (e) {
      emit(SaveFailure(e.toString()));
    }
  }

  // ✅ For Screen Two
  Future<void> _onSubmitScreenTwo(
      SubmitSaveScreenTwoEvent event, Emitter<SaveState> emit) async {
    emit(SaveLoading());
    try {
      final result = await repository.saveScreenTwo(
        amount: event.amount,
        narration: event.narration,
        pin: event.pin,
      );

      if (result['success'] == true) {
        emit(SaveSuccess(result['message'] ?? 'Data saved successfully'));
      } else {
        emit(SaveFailure(result['message'] ?? 'Save failed'));
      }
    } catch (e) {
      emit(SaveFailure(e.toString()));
    }
  }
}
