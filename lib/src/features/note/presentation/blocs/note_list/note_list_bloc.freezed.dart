// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteListEventGetAll value) getAll,
    required TResult Function(_NoteListEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteListEventGetAll value)? getAll,
    TResult? Function(_NoteListEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteListEventGetAll value)? getAll,
    TResult Function(_NoteListEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListEventCopyWith<$Res> {
  factory $NoteListEventCopyWith(
          NoteListEvent value, $Res Function(NoteListEvent) then) =
      _$NoteListEventCopyWithImpl<$Res, NoteListEvent>;
}

/// @nodoc
class _$NoteListEventCopyWithImpl<$Res, $Val extends NoteListEvent>
    implements $NoteListEventCopyWith<$Res> {
  _$NoteListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoteListEventGetAllImplCopyWith<$Res> {
  factory _$$NoteListEventGetAllImplCopyWith(_$NoteListEventGetAllImpl value,
          $Res Function(_$NoteListEventGetAllImpl) then) =
      __$$NoteListEventGetAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoteListEventGetAllImplCopyWithImpl<$Res>
    extends _$NoteListEventCopyWithImpl<$Res, _$NoteListEventGetAllImpl>
    implements _$$NoteListEventGetAllImplCopyWith<$Res> {
  __$$NoteListEventGetAllImplCopyWithImpl(_$NoteListEventGetAllImpl _value,
      $Res Function(_$NoteListEventGetAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoteListEventGetAllImpl implements _NoteListEventGetAll {
  const _$NoteListEventGetAllImpl();

  @override
  String toString() {
    return 'NoteListEvent.getAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListEventGetAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) delete,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? delete,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteListEventGetAll value) getAll,
    required TResult Function(_NoteListEventDelete value) delete,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteListEventGetAll value)? getAll,
    TResult? Function(_NoteListEventDelete value)? delete,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteListEventGetAll value)? getAll,
    TResult Function(_NoteListEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _NoteListEventGetAll implements NoteListEvent {
  const factory _NoteListEventGetAll() = _$NoteListEventGetAllImpl;
}

/// @nodoc
abstract class _$$NoteListEventDeleteImplCopyWith<$Res> {
  factory _$$NoteListEventDeleteImplCopyWith(_$NoteListEventDeleteImpl value,
          $Res Function(_$NoteListEventDeleteImpl) then) =
      __$$NoteListEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$NoteListEventDeleteImplCopyWithImpl<$Res>
    extends _$NoteListEventCopyWithImpl<$Res, _$NoteListEventDeleteImpl>
    implements _$$NoteListEventDeleteImplCopyWith<$Res> {
  __$$NoteListEventDeleteImplCopyWithImpl(_$NoteListEventDeleteImpl _value,
      $Res Function(_$NoteListEventDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$NoteListEventDeleteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteListEventDeleteImpl implements _NoteListEventDelete {
  const _$NoteListEventDeleteImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'NoteListEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListEventDeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteListEventDeleteImplCopyWith<_$NoteListEventDeleteImpl> get copyWith =>
      __$$NoteListEventDeleteImplCopyWithImpl<_$NoteListEventDeleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteListEventGetAll value) getAll,
    required TResult Function(_NoteListEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteListEventGetAll value)? getAll,
    TResult? Function(_NoteListEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteListEventGetAll value)? getAll,
    TResult Function(_NoteListEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _NoteListEventDelete implements NoteListEvent {
  const factory _NoteListEventDelete({required final String id}) =
      _$NoteListEventDeleteImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$NoteListEventDeleteImplCopyWith<_$NoteListEventDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteEntity> entityList) idle,
    required TResult Function() loading,
    required TResult Function(NoteListEvent event) success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteEntity> entityList)? idle,
    TResult? Function()? loading,
    TResult? Function(NoteListEvent event)? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteEntity> entityList)? idle,
    TResult Function()? loading,
    TResult Function(NoteListEvent event)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteListStateIdle value) idle,
    required TResult Function(_NoteListStateLoading value) loading,
    required TResult Function(_NoteListStateSuccess value) success,
    required TResult Function(_NoteListStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteListStateIdle value)? idle,
    TResult? Function(_NoteListStateLoading value)? loading,
    TResult? Function(_NoteListStateSuccess value)? success,
    TResult? Function(_NoteListStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteListStateIdle value)? idle,
    TResult Function(_NoteListStateLoading value)? loading,
    TResult Function(_NoteListStateSuccess value)? success,
    TResult Function(_NoteListStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListStateCopyWith<$Res> {
  factory $NoteListStateCopyWith(
          NoteListState value, $Res Function(NoteListState) then) =
      _$NoteListStateCopyWithImpl<$Res, NoteListState>;
}

/// @nodoc
class _$NoteListStateCopyWithImpl<$Res, $Val extends NoteListState>
    implements $NoteListStateCopyWith<$Res> {
  _$NoteListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoteListStateIdleImplCopyWith<$Res> {
  factory _$$NoteListStateIdleImplCopyWith(_$NoteListStateIdleImpl value,
          $Res Function(_$NoteListStateIdleImpl) then) =
      __$$NoteListStateIdleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NoteEntity> entityList});
}

/// @nodoc
class __$$NoteListStateIdleImplCopyWithImpl<$Res>
    extends _$NoteListStateCopyWithImpl<$Res, _$NoteListStateIdleImpl>
    implements _$$NoteListStateIdleImplCopyWith<$Res> {
  __$$NoteListStateIdleImplCopyWithImpl(_$NoteListStateIdleImpl _value,
      $Res Function(_$NoteListStateIdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityList = null,
  }) {
    return _then(_$NoteListStateIdleImpl(
      entityList: null == entityList
          ? _value._entityList
          : entityList // ignore: cast_nullable_to_non_nullable
              as List<NoteEntity>,
    ));
  }
}

/// @nodoc

class _$NoteListStateIdleImpl implements _NoteListStateIdle {
  const _$NoteListStateIdleImpl({required final List<NoteEntity> entityList})
      : _entityList = entityList;

  final List<NoteEntity> _entityList;
  @override
  List<NoteEntity> get entityList {
    if (_entityList is EqualUnmodifiableListView) return _entityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entityList);
  }

  @override
  String toString() {
    return 'NoteListState.idle(entityList: $entityList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListStateIdleImpl &&
            const DeepCollectionEquality()
                .equals(other._entityList, _entityList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_entityList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteListStateIdleImplCopyWith<_$NoteListStateIdleImpl> get copyWith =>
      __$$NoteListStateIdleImplCopyWithImpl<_$NoteListStateIdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteEntity> entityList) idle,
    required TResult Function() loading,
    required TResult Function(NoteListEvent event) success,
    required TResult Function(String errorMessage) error,
  }) {
    return idle(entityList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteEntity> entityList)? idle,
    TResult? Function()? loading,
    TResult? Function(NoteListEvent event)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return idle?.call(entityList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteEntity> entityList)? idle,
    TResult Function()? loading,
    TResult Function(NoteListEvent event)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(entityList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteListStateIdle value) idle,
    required TResult Function(_NoteListStateLoading value) loading,
    required TResult Function(_NoteListStateSuccess value) success,
    required TResult Function(_NoteListStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteListStateIdle value)? idle,
    TResult? Function(_NoteListStateLoading value)? loading,
    TResult? Function(_NoteListStateSuccess value)? success,
    TResult? Function(_NoteListStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteListStateIdle value)? idle,
    TResult Function(_NoteListStateLoading value)? loading,
    TResult Function(_NoteListStateSuccess value)? success,
    TResult Function(_NoteListStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _NoteListStateIdle implements NoteListState {
  const factory _NoteListStateIdle(
      {required final List<NoteEntity> entityList}) = _$NoteListStateIdleImpl;

  List<NoteEntity> get entityList;
  @JsonKey(ignore: true)
  _$$NoteListStateIdleImplCopyWith<_$NoteListStateIdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteListStateLoadingImplCopyWith<$Res> {
  factory _$$NoteListStateLoadingImplCopyWith(_$NoteListStateLoadingImpl value,
          $Res Function(_$NoteListStateLoadingImpl) then) =
      __$$NoteListStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoteListStateLoadingImplCopyWithImpl<$Res>
    extends _$NoteListStateCopyWithImpl<$Res, _$NoteListStateLoadingImpl>
    implements _$$NoteListStateLoadingImplCopyWith<$Res> {
  __$$NoteListStateLoadingImplCopyWithImpl(_$NoteListStateLoadingImpl _value,
      $Res Function(_$NoteListStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoteListStateLoadingImpl implements _NoteListStateLoading {
  const _$NoteListStateLoadingImpl();

  @override
  String toString() {
    return 'NoteListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteEntity> entityList) idle,
    required TResult Function() loading,
    required TResult Function(NoteListEvent event) success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteEntity> entityList)? idle,
    TResult? Function()? loading,
    TResult? Function(NoteListEvent event)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteEntity> entityList)? idle,
    TResult Function()? loading,
    TResult Function(NoteListEvent event)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteListStateIdle value) idle,
    required TResult Function(_NoteListStateLoading value) loading,
    required TResult Function(_NoteListStateSuccess value) success,
    required TResult Function(_NoteListStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteListStateIdle value)? idle,
    TResult? Function(_NoteListStateLoading value)? loading,
    TResult? Function(_NoteListStateSuccess value)? success,
    TResult? Function(_NoteListStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteListStateIdle value)? idle,
    TResult Function(_NoteListStateLoading value)? loading,
    TResult Function(_NoteListStateSuccess value)? success,
    TResult Function(_NoteListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NoteListStateLoading implements NoteListState {
  const factory _NoteListStateLoading() = _$NoteListStateLoadingImpl;
}

/// @nodoc
abstract class _$$NoteListStateSuccessImplCopyWith<$Res> {
  factory _$$NoteListStateSuccessImplCopyWith(_$NoteListStateSuccessImpl value,
          $Res Function(_$NoteListStateSuccessImpl) then) =
      __$$NoteListStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteListEvent event});

  $NoteListEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$NoteListStateSuccessImplCopyWithImpl<$Res>
    extends _$NoteListStateCopyWithImpl<$Res, _$NoteListStateSuccessImpl>
    implements _$$NoteListStateSuccessImplCopyWith<$Res> {
  __$$NoteListStateSuccessImplCopyWithImpl(_$NoteListStateSuccessImpl _value,
      $Res Function(_$NoteListStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$NoteListStateSuccessImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as NoteListEvent,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteListEventCopyWith<$Res> get event {
    return $NoteListEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$NoteListStateSuccessImpl implements _NoteListStateSuccess {
  const _$NoteListStateSuccessImpl({required this.event});

  @override
  final NoteListEvent event;

  @override
  String toString() {
    return 'NoteListState.success(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListStateSuccessImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteListStateSuccessImplCopyWith<_$NoteListStateSuccessImpl>
      get copyWith =>
          __$$NoteListStateSuccessImplCopyWithImpl<_$NoteListStateSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteEntity> entityList) idle,
    required TResult Function() loading,
    required TResult Function(NoteListEvent event) success,
    required TResult Function(String errorMessage) error,
  }) {
    return success(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteEntity> entityList)? idle,
    TResult? Function()? loading,
    TResult? Function(NoteListEvent event)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteEntity> entityList)? idle,
    TResult Function()? loading,
    TResult Function(NoteListEvent event)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteListStateIdle value) idle,
    required TResult Function(_NoteListStateLoading value) loading,
    required TResult Function(_NoteListStateSuccess value) success,
    required TResult Function(_NoteListStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteListStateIdle value)? idle,
    TResult? Function(_NoteListStateLoading value)? loading,
    TResult? Function(_NoteListStateSuccess value)? success,
    TResult? Function(_NoteListStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteListStateIdle value)? idle,
    TResult Function(_NoteListStateLoading value)? loading,
    TResult Function(_NoteListStateSuccess value)? success,
    TResult Function(_NoteListStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NoteListStateSuccess implements NoteListState {
  const factory _NoteListStateSuccess({required final NoteListEvent event}) =
      _$NoteListStateSuccessImpl;

  NoteListEvent get event;
  @JsonKey(ignore: true)
  _$$NoteListStateSuccessImplCopyWith<_$NoteListStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteListStateErrorImplCopyWith<$Res> {
  factory _$$NoteListStateErrorImplCopyWith(_$NoteListStateErrorImpl value,
          $Res Function(_$NoteListStateErrorImpl) then) =
      __$$NoteListStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$NoteListStateErrorImplCopyWithImpl<$Res>
    extends _$NoteListStateCopyWithImpl<$Res, _$NoteListStateErrorImpl>
    implements _$$NoteListStateErrorImplCopyWith<$Res> {
  __$$NoteListStateErrorImplCopyWithImpl(_$NoteListStateErrorImpl _value,
      $Res Function(_$NoteListStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$NoteListStateErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteListStateErrorImpl implements _NoteListStateError {
  const _$NoteListStateErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NoteListState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListStateErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteListStateErrorImplCopyWith<_$NoteListStateErrorImpl> get copyWith =>
      __$$NoteListStateErrorImplCopyWithImpl<_$NoteListStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteEntity> entityList) idle,
    required TResult Function() loading,
    required TResult Function(NoteListEvent event) success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteEntity> entityList)? idle,
    TResult? Function()? loading,
    TResult? Function(NoteListEvent event)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteEntity> entityList)? idle,
    TResult Function()? loading,
    TResult Function(NoteListEvent event)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteListStateIdle value) idle,
    required TResult Function(_NoteListStateLoading value) loading,
    required TResult Function(_NoteListStateSuccess value) success,
    required TResult Function(_NoteListStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteListStateIdle value)? idle,
    TResult? Function(_NoteListStateLoading value)? loading,
    TResult? Function(_NoteListStateSuccess value)? success,
    TResult? Function(_NoteListStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteListStateIdle value)? idle,
    TResult Function(_NoteListStateLoading value)? loading,
    TResult Function(_NoteListStateSuccess value)? success,
    TResult Function(_NoteListStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NoteListStateError implements NoteListState {
  const factory _NoteListStateError({required final String errorMessage}) =
      _$NoteListStateErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$NoteListStateErrorImplCopyWith<_$NoteListStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
