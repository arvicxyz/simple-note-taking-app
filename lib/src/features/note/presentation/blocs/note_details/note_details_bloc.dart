import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_logger.dart';
import '../../../domain/_domain.dart';

part 'note_details_event.dart';
part 'note_details_state.dart';
part 'note_details_bloc.freezed.dart';

@lazySingleton
class NoteDetailsBloc extends Bloc<NoteDetailsEvent, NoteDetailsState> {
  final GetNoteUseCase _getNoteUseCase;
  final AddNoteUseCase _addNoteUseCase;
  final UpdateNoteUseCase _updateNoteUseCase;
  final DeleteNoteUseCase _deleteNoteUseCase;

  @factoryMethod
  NoteDetailsBloc(
    this._getNoteUseCase,
    this._addNoteUseCase,
    this._updateNoteUseCase,
    this._deleteNoteUseCase,
  ) : super(_NoteDetailsStateIdle(entity: NoteEntity.empty())) {
    on<_NoteDetailsEventGet>(_onNoteDetailsEventGet);
    on<_NoteDetailsEventAdd>(_onNoteDetailsEventAdd);
    on<_NoteDetailsEventUpdate>(_onNoteDetailsEventUpdate);
    on<_NoteDetailsEventDelete>(_onNoteDetailsEventDelete);
  }

  Future<void> _onNoteDetailsEventGet(
    _NoteDetailsEventGet event,
    Emitter<NoteDetailsState> emit,
  ) async {
    AppLogger.logInfo('_onNoteDetailsEventGet is invoked');

    final state = this.state;
    if (state is _NoteDetailsStateIdle) {
      final id = event.id;

      emit(const NoteDetailsState.loading());

      // Use case
      final either = await _getNoteUseCase(id);
      either.fold(
        (failure) {
          emit(NoteDetailsState.error(errorMessage: failure.errorMessage));
          emit(NoteDetailsState.idle(entity: NoteEntity.empty()));
        },
        (data) {
          AppLogger.logInfo(data);

          emit(const NoteDetailsState.success());
          emit(NoteDetailsState.idle(entity: data));
        },
      );
    }
  }

  Future<void> _onNoteDetailsEventAdd(
    _NoteDetailsEventAdd event,
    Emitter<NoteDetailsState> emit,
  ) async {
    AppLogger.logInfo('_onNoteDetailsEventAdd is invoked');

    final state = this.state;
    if (state is _NoteDetailsStateIdle) {
      final entity = event.entity;

      // Use case
      final either = await _addNoteUseCase(entity);
      either.fold(
        (failure) {
          emit(NoteDetailsState.error(errorMessage: failure.errorMessage));
          emit(state);
        },
        (data) {
          emit(const NoteDetailsState.success());
          emit(state);
        },
      );
    }
  }

  Future<void> _onNoteDetailsEventUpdate(
    _NoteDetailsEventUpdate event,
    Emitter<NoteDetailsState> emit,
  ) async {
    AppLogger.logInfo('_onNoteDetailsEventUpdate is invoked');

    final state = this.state;
    if (state is _NoteDetailsStateIdle) {
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
          emit(NoteDetailsState.error(errorMessage: failure.errorMessage));
          emit(state);
        },
        (data) {
          emit(const NoteDetailsState.success());
          emit(state);
        },
      );
    }
  }

  Future<void> _onNoteDetailsEventDelete(
    _NoteDetailsEventDelete event,
    Emitter<NoteDetailsState> emit,
  ) async {
    AppLogger.logInfo('_onNoteDetailsEventDelete is invoked');

    final state = this.state;
    if (state is _NoteDetailsStateIdle) {
      final id = event.id;

      // Use case
      final either = await _deleteNoteUseCase(id);
      either.fold(
        (failure) {
          emit(NoteDetailsState.error(errorMessage: failure.errorMessage));
          emit(state);
        },
        (data) {
          emit(const NoteDetailsState.success());
          emit(state);
        },
      );
    }
  }
}
