import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/app_logger.dart';
import '../../../domain/_domain.dart';

part 'note_event.dart';
part 'note_state.dart';
part 'note_bloc.freezed.dart';

@lazySingleton
class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final GetAllNoteUseCase _getAllNoteUseCase;
  final AddNoteUseCase _addNoteUseCase;
  final UpdateNoteUseCase _updateNoteUseCase;
  final DeleteNoteUseCase _deleteNoteUseCase;

  late List<NoteEntity> _entityList;

  @factoryMethod
  NoteBloc(
    this._getAllNoteUseCase,
    this._addNoteUseCase,
    this._updateNoteUseCase,
    this._deleteNoteUseCase,
  ) : super(const _NoteStateLoading()) {
    on<_NoteEventGetAll>(_onNoteEventGetAll);
    on<_NoteEventAdd>(_onNoteEventAdd);
    on<_NoteEventUpdate>(_onNoteEventUpdate);
    on<_NoteEventDelete>(_onNoteEventDelete);
  }

  Future<void> _onNoteEventGetAll(_NoteEventGetAll event, Emitter emit) async {
    AppLogger.logInfo('_onNoteEventGetAll is invoked');

    final state = this.state;
    if (state is _NoteStateLoading) {
      // Use case
      final either = await _getAllNoteUseCase();
      either.fold(
        (failure) => emit(NoteState.error(
          errorMessage: failure.errorMessage,
        )),
        (data) {
          AppLogger.logInfo(data);
          _entityList = data;

          emit(const NoteState.success());
          emit(NoteState.idle(
            entityList: _entityList,
          ));
        },
      );
    }
  }

  Future<void> _onNoteEventAdd(_NoteEventAdd event, Emitter emit) async {
    AppLogger.logInfo('_onNoteEventAdd is invoked');

    final state = this.state;
    if (state is _NoteStateSuccess) {
      final entity = event.entity;

      emit(const NoteState.loading());

      // Use case
      final either = await _addNoteUseCase(entity);
      either.fold(
        (failure) => emit(NoteState.error(
          errorMessage: failure.errorMessage,
        )),
        (data) {
          _entityList.add(entity);

          emit(const NoteState.success());
          emit(NoteState.idle(
            entityList: _entityList,
          ));
        },
      );
    }
  }

  Future<void> _onNoteEventUpdate(_NoteEventUpdate event, Emitter emit) async {
    AppLogger.logInfo('_onNoteEventUpdate is invoked');

    final state = this.state;
    if (state is _NoteStateSuccess) {
      final id = event.id;
      final entity = event.entity;

      emit(const NoteState.loading());

      // Use case
      final either = await _updateNoteUseCase(
        UpdateNoteUseCaseInput(
          id: id,
          entity: entity,
        ),
      );
      either.fold(
        (failure) => emit(NoteState.error(
          errorMessage: failure.errorMessage,
        )),
        (data) {
          final indexToUpdate = _entityList.indexWhere((element) => element.id == id);
          _entityList[indexToUpdate] = entity;

          emit(const NoteState.success());
          emit(NoteState.idle(
            entityList: _entityList,
          ));
        },
      );
    }
  }

  Future<void> _onNoteEventDelete(_NoteEventDelete event, Emitter emit) async {
    AppLogger.logInfo('_onNoteEventDelete is invoked');

    final state = this.state;
    if (state is _NoteStateSuccess) {
      final id = event.id;

      emit(const NoteState.loading());

      // Use case
      final either = await _deleteNoteUseCase(id);
      either.fold(
        (failure) => emit(NoteState.error(
          errorMessage: failure.errorMessage,
        )),
        (data) {
          _entityList.removeWhere((element) => element.id == id);

          emit(const NoteState.success());
          emit(NoteState.idle(
            entityList: _entityList,
          ));
        },
      );
    }
  }
}
