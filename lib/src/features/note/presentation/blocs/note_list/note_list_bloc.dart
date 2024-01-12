import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_logger.dart';
import '../../../domain/_domain.dart';

part 'note_list_event.dart';
part 'note_list_state.dart';
part 'note_list_bloc.freezed.dart';

@lazySingleton
class NoteListBloc extends Bloc<NoteListEvent, NoteListState> {
  final GetAllNoteUseCase _getAllNoteUseCase;
  final DeleteNoteUseCase _deleteNoteUseCase;

  late List<NoteEntity> _entityList;

  @factoryMethod
  NoteListBloc(
    this._getAllNoteUseCase,
    this._deleteNoteUseCase,
  ) : super(_NoteListStateIdle(entityList: List.empty())) {
    on<_NoteListEventGetAll>(_onNoteListEventGetAll);
    on<_NoteListEventDelete>(_onNoteListEventDelete);
  }

  Future<void> _onNoteListEventGetAll(
    _NoteListEventGetAll event,
    Emitter<NoteListState> emit,
  ) async {
    AppLogger.logInfo('_onNoteListEventGetAll is invoked');

    final state = this.state;
    if (state is _NoteListStateIdle) {
      emit(const NoteListState.loading());

      // Use case
      final either = await _getAllNoteUseCase();
      either.fold(
        (failure) {
          emit(NoteListState.error(errorMessage: failure.errorMessage));
          emit(NoteListState.idle(entityList: List.empty()));
        },
        (data) {
          AppLogger.logInfo(data);
          _entityList = data.reversed.toList();

          emit(NoteListState.success(event: event));
          emit(NoteListState.idle(entityList: _entityList));
        },
      );
    }
  }

  Future<void> _onNoteListEventDelete(
    _NoteListEventDelete event,
    Emitter<NoteListState> emit,
  ) async {
    AppLogger.logInfo('_onNoteListEventDelete is invoked');

    final state = this.state;
    if (state is _NoteListStateIdle) {
      final id = event.id;

      // Use case
      final either = await _deleteNoteUseCase(id);
      either.fold(
        (failure) {
          emit(NoteListState.error(errorMessage: failure.errorMessage));
          emit(state);
        },
        (data) {
          _entityList.removeWhere((element) => element.id == id);

          emit(NoteListState.success(event: event));
          emit(state.copyWith(entityList: _entityList));
        },
      );
    }
  }
}
