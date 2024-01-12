import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_logger.dart';
import '../../../domain/_domain.dart';

part 'note_add_edit_event.dart';
part 'note_add_edit_state.dart';
part 'note_add_edit_bloc.freezed.dart';

@lazySingleton
class NoteAddEditBloc extends Bloc<NoteAddEditEvent, NoteAddEditState> {
  final GetNoteUseCase _getNoteUseCase;
  final AddNoteUseCase _addNoteUseCase;
  final UpdateNoteUseCase _updateNoteUseCase;

  @factoryMethod
  NoteAddEditBloc(
    this._getNoteUseCase,
    this._addNoteUseCase,
    this._updateNoteUseCase,
  ) : super(_NoteAddEditStateIdle(entity: NoteEntity.empty())) {
    on<_NoteAddEditEventGet>(_onNoteAddEditEventGet);
    on<_NoteAddEditEventAdd>(_onNoteAddEditEventAdd);
    on<_NoteAddEditEventUpdate>(_onNoteAddEditEventUpdate);
    on<_NoteAddEditEventInvokeError>(_onNoteAddEditEventInvokeError);
  }

  Future<void> _onNoteAddEditEventGet(
    _NoteAddEditEventGet event,
    Emitter<NoteAddEditState> emit,
  ) async {
    AppLogger.logInfo('_onNoteAddEditEventGet is invoked');

    final state = this.state;
    if (state is _NoteAddEditStateIdle) {
      final id = event.id;

      emit(const NoteAddEditState.loading());

      // Use case
      final either = await _getNoteUseCase(id);
      either.fold(
        (failure) {
          emit(NoteAddEditState.error(errorMessage: failure.errorMessage));
          emit(NoteAddEditState.idle(entity: NoteEntity.empty()));
        },
        (data) {
          AppLogger.logInfo(data);

          emit(NoteAddEditState.success(event: event));
          emit(state.copyWith(entity: data));
        },
      );
    }
  }

  Future<void> _onNoteAddEditEventAdd(
    _NoteAddEditEventAdd event,
    Emitter<NoteAddEditState> emit,
  ) async {
    AppLogger.logInfo('_onNoteAddEditEventAdd is invoked');

    final state = this.state;
    if (state is _NoteAddEditStateIdle) {
      final entity = event.entity;

      // Use case
      final either = await _addNoteUseCase(entity);
      either.fold(
        (failure) {
          emit(NoteAddEditState.error(errorMessage: failure.errorMessage));
          emit(state);
        },
        (data) {
          emit(NoteAddEditState.success(event: event));
          emit(state);
        },
      );
    }
  }

  Future<void> _onNoteAddEditEventUpdate(
    _NoteAddEditEventUpdate event,
    Emitter<NoteAddEditState> emit,
  ) async {
    AppLogger.logInfo('_onNoteAddEditEventUpdate is invoked');

    final state = this.state;
    if (state is _NoteAddEditStateIdle) {
      final id = event.id;
      final entity = event.entity;

      // Use case
      final either = await _updateNoteUseCase(
        UpdateNoteUseCaseInput(
          id: id,
          entity: entity,
        ),
      );
      either.fold(
        (failure) {
          emit(NoteAddEditState.error(errorMessage: failure.errorMessage));
          emit(state);
        },
        (data) {
          emit(NoteAddEditState.success(event: event));
          emit(state);
        },
      );
    }
  }

  Future<void> _onNoteAddEditEventInvokeError(
    _NoteAddEditEventInvokeError event,
    Emitter<NoteAddEditState> emit,
  ) async {
    final errorMessage = event.errorMessage;
    emit(NoteAddEditState.error(errorMessage: errorMessage));
  }
}
