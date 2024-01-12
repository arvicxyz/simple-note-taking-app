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
  final DeleteNoteUseCase _deleteNoteUseCase;

  @factoryMethod
  NoteDetailsBloc(
    this._getNoteUseCase,
    this._deleteNoteUseCase,
  ) : super(_NoteDetailsStateIdle(entity: NoteEntity.empty())) {
    on<_NoteDetailsEventGet>(_onNoteDetailsEventGet);
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

          emit(NoteDetailsState.success(event: event));
          emit(NoteDetailsState.idle(entity: data));
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
          emit(NoteDetailsState.success(event: event));
          emit(state);
        },
      );
    }
  }
}
