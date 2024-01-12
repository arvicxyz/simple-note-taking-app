// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteDetailsEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) get,
    required TResult Function(String id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? get,
    TResult? Function(String id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? get,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteDetailsEventGet value) get,
    required TResult Function(_NoteDetailsEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteDetailsEventGet value)? get,
    TResult? Function(_NoteDetailsEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteDetailsEventGet value)? get,
    TResult Function(_NoteDetailsEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteDetailsEventCopyWith<NoteDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDetailsEventCopyWith<$Res> {
  factory $NoteDetailsEventCopyWith(
          NoteDetailsEvent value, $Res Function(NoteDetailsEvent) then) =
      _$NoteDetailsEventCopyWithImpl<$Res, NoteDetailsEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$NoteDetailsEventCopyWithImpl<$Res, $Val extends NoteDetailsEvent>
    implements $NoteDetailsEventCopyWith<$Res> {
  _$NoteDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteDetailsEventGetImplCopyWith<$Res>
    implements $NoteDetailsEventCopyWith<$Res> {
  factory _$$NoteDetailsEventGetImplCopyWith(_$NoteDetailsEventGetImpl value,
          $Res Function(_$NoteDetailsEventGetImpl) then) =
      __$$NoteDetailsEventGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$NoteDetailsEventGetImplCopyWithImpl<$Res>
    extends _$NoteDetailsEventCopyWithImpl<$Res, _$NoteDetailsEventGetImpl>
    implements _$$NoteDetailsEventGetImplCopyWith<$Res> {
  __$$NoteDetailsEventGetImplCopyWithImpl(_$NoteDetailsEventGetImpl _value,
      $Res Function(_$NoteDetailsEventGetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$NoteDetailsEventGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteDetailsEventGetImpl implements _NoteDetailsEventGet {
  const _$NoteDetailsEventGetImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'NoteDetailsEvent.get(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteDetailsEventGetImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteDetailsEventGetImplCopyWith<_$NoteDetailsEventGetImpl> get copyWith =>
      __$$NoteDetailsEventGetImplCopyWithImpl<_$NoteDetailsEventGetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) get,
    required TResult Function(String id) delete,
  }) {
    return get(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? get,
    TResult? Function(String id)? delete,
  }) {
    return get?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? get,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteDetailsEventGet value) get,
    required TResult Function(_NoteDetailsEventDelete value) delete,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteDetailsEventGet value)? get,
    TResult? Function(_NoteDetailsEventDelete value)? delete,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteDetailsEventGet value)? get,
    TResult Function(_NoteDetailsEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _NoteDetailsEventGet implements NoteDetailsEvent {
  const factory _NoteDetailsEventGet({required final String id}) =
      _$NoteDetailsEventGetImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$NoteDetailsEventGetImplCopyWith<_$NoteDetailsEventGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteDetailsEventDeleteImplCopyWith<$Res>
    implements $NoteDetailsEventCopyWith<$Res> {
  factory _$$NoteDetailsEventDeleteImplCopyWith(
          _$NoteDetailsEventDeleteImpl value,
          $Res Function(_$NoteDetailsEventDeleteImpl) then) =
      __$$NoteDetailsEventDeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$NoteDetailsEventDeleteImplCopyWithImpl<$Res>
    extends _$NoteDetailsEventCopyWithImpl<$Res, _$NoteDetailsEventDeleteImpl>
    implements _$$NoteDetailsEventDeleteImplCopyWith<$Res> {
  __$$NoteDetailsEventDeleteImplCopyWithImpl(
      _$NoteDetailsEventDeleteImpl _value,
      $Res Function(_$NoteDetailsEventDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$NoteDetailsEventDeleteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteDetailsEventDeleteImpl implements _NoteDetailsEventDelete {
  const _$NoteDetailsEventDeleteImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'NoteDetailsEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteDetailsEventDeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteDetailsEventDeleteImplCopyWith<_$NoteDetailsEventDeleteImpl>
      get copyWith => __$$NoteDetailsEventDeleteImplCopyWithImpl<
          _$NoteDetailsEventDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) get,
    required TResult Function(String id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? get,
    TResult? Function(String id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? get,
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
    required TResult Function(_NoteDetailsEventGet value) get,
    required TResult Function(_NoteDetailsEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteDetailsEventGet value)? get,
    TResult? Function(_NoteDetailsEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteDetailsEventGet value)? get,
    TResult Function(_NoteDetailsEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _NoteDetailsEventDelete implements NoteDetailsEvent {
  const factory _NoteDetailsEventDelete({required final String id}) =
      _$NoteDetailsEventDeleteImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$NoteDetailsEventDeleteImplCopyWith<_$NoteDetailsEventDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteEntity entity) idle,
    required TResult Function() loading,
    required TResult Function(NoteDetailsEvent event) success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteEntity entity)? idle,
    TResult? Function()? loading,
    TResult? Function(NoteDetailsEvent event)? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteEntity entity)? idle,
    TResult Function()? loading,
    TResult Function(NoteDetailsEvent event)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteDetailsStateIdle value) idle,
    required TResult Function(_NoteDetailsStateLoading value) loading,
    required TResult Function(_NoteDetailsStateSuccess value) success,
    required TResult Function(_NoteDetailsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteDetailsStateIdle value)? idle,
    TResult? Function(_NoteDetailsStateLoading value)? loading,
    TResult? Function(_NoteDetailsStateSuccess value)? success,
    TResult? Function(_NoteDetailsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteDetailsStateIdle value)? idle,
    TResult Function(_NoteDetailsStateLoading value)? loading,
    TResult Function(_NoteDetailsStateSuccess value)? success,
    TResult Function(_NoteDetailsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDetailsStateCopyWith<$Res> {
  factory $NoteDetailsStateCopyWith(
          NoteDetailsState value, $Res Function(NoteDetailsState) then) =
      _$NoteDetailsStateCopyWithImpl<$Res, NoteDetailsState>;
}

/// @nodoc
class _$NoteDetailsStateCopyWithImpl<$Res, $Val extends NoteDetailsState>
    implements $NoteDetailsStateCopyWith<$Res> {
  _$NoteDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoteDetailsStateIdleImplCopyWith<$Res> {
  factory _$$NoteDetailsStateIdleImplCopyWith(_$NoteDetailsStateIdleImpl value,
          $Res Function(_$NoteDetailsStateIdleImpl) then) =
      __$$NoteDetailsStateIdleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteEntity entity});

  $NoteEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$NoteDetailsStateIdleImplCopyWithImpl<$Res>
    extends _$NoteDetailsStateCopyWithImpl<$Res, _$NoteDetailsStateIdleImpl>
    implements _$$NoteDetailsStateIdleImplCopyWith<$Res> {
  __$$NoteDetailsStateIdleImplCopyWithImpl(_$NoteDetailsStateIdleImpl _value,
      $Res Function(_$NoteDetailsStateIdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$NoteDetailsStateIdleImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as NoteEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteEntityCopyWith<$Res> get entity {
    return $NoteEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$NoteDetailsStateIdleImpl implements _NoteDetailsStateIdle {
  const _$NoteDetailsStateIdleImpl({required this.entity});

  @override
  final NoteEntity entity;

  @override
  String toString() {
    return 'NoteDetailsState.idle(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteDetailsStateIdleImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteDetailsStateIdleImplCopyWith<_$NoteDetailsStateIdleImpl>
      get copyWith =>
          __$$NoteDetailsStateIdleImplCopyWithImpl<_$NoteDetailsStateIdleImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteEntity entity) idle,
    required TResult Function() loading,
    required TResult Function(NoteDetailsEvent event) success,
    required TResult Function(String errorMessage) error,
  }) {
    return idle(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteEntity entity)? idle,
    TResult? Function()? loading,
    TResult? Function(NoteDetailsEvent event)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return idle?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteEntity entity)? idle,
    TResult Function()? loading,
    TResult Function(NoteDetailsEvent event)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteDetailsStateIdle value) idle,
    required TResult Function(_NoteDetailsStateLoading value) loading,
    required TResult Function(_NoteDetailsStateSuccess value) success,
    required TResult Function(_NoteDetailsStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteDetailsStateIdle value)? idle,
    TResult? Function(_NoteDetailsStateLoading value)? loading,
    TResult? Function(_NoteDetailsStateSuccess value)? success,
    TResult? Function(_NoteDetailsStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteDetailsStateIdle value)? idle,
    TResult Function(_NoteDetailsStateLoading value)? loading,
    TResult Function(_NoteDetailsStateSuccess value)? success,
    TResult Function(_NoteDetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _NoteDetailsStateIdle implements NoteDetailsState {
  const factory _NoteDetailsStateIdle({required final NoteEntity entity}) =
      _$NoteDetailsStateIdleImpl;

  NoteEntity get entity;
  @JsonKey(ignore: true)
  _$$NoteDetailsStateIdleImplCopyWith<_$NoteDetailsStateIdleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteDetailsStateLoadingImplCopyWith<$Res> {
  factory _$$NoteDetailsStateLoadingImplCopyWith(
          _$NoteDetailsStateLoadingImpl value,
          $Res Function(_$NoteDetailsStateLoadingImpl) then) =
      __$$NoteDetailsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoteDetailsStateLoadingImplCopyWithImpl<$Res>
    extends _$NoteDetailsStateCopyWithImpl<$Res, _$NoteDetailsStateLoadingImpl>
    implements _$$NoteDetailsStateLoadingImplCopyWith<$Res> {
  __$$NoteDetailsStateLoadingImplCopyWithImpl(
      _$NoteDetailsStateLoadingImpl _value,
      $Res Function(_$NoteDetailsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoteDetailsStateLoadingImpl implements _NoteDetailsStateLoading {
  const _$NoteDetailsStateLoadingImpl();

  @override
  String toString() {
    return 'NoteDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteDetailsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteEntity entity) idle,
    required TResult Function() loading,
    required TResult Function(NoteDetailsEvent event) success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteEntity entity)? idle,
    TResult? Function()? loading,
    TResult? Function(NoteDetailsEvent event)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteEntity entity)? idle,
    TResult Function()? loading,
    TResult Function(NoteDetailsEvent event)? success,
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
    required TResult Function(_NoteDetailsStateIdle value) idle,
    required TResult Function(_NoteDetailsStateLoading value) loading,
    required TResult Function(_NoteDetailsStateSuccess value) success,
    required TResult Function(_NoteDetailsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteDetailsStateIdle value)? idle,
    TResult? Function(_NoteDetailsStateLoading value)? loading,
    TResult? Function(_NoteDetailsStateSuccess value)? success,
    TResult? Function(_NoteDetailsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteDetailsStateIdle value)? idle,
    TResult Function(_NoteDetailsStateLoading value)? loading,
    TResult Function(_NoteDetailsStateSuccess value)? success,
    TResult Function(_NoteDetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NoteDetailsStateLoading implements NoteDetailsState {
  const factory _NoteDetailsStateLoading() = _$NoteDetailsStateLoadingImpl;
}

/// @nodoc
abstract class _$$NoteDetailsStateSuccessImplCopyWith<$Res> {
  factory _$$NoteDetailsStateSuccessImplCopyWith(
          _$NoteDetailsStateSuccessImpl value,
          $Res Function(_$NoteDetailsStateSuccessImpl) then) =
      __$$NoteDetailsStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteDetailsEvent event});

  $NoteDetailsEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$NoteDetailsStateSuccessImplCopyWithImpl<$Res>
    extends _$NoteDetailsStateCopyWithImpl<$Res, _$NoteDetailsStateSuccessImpl>
    implements _$$NoteDetailsStateSuccessImplCopyWith<$Res> {
  __$$NoteDetailsStateSuccessImplCopyWithImpl(
      _$NoteDetailsStateSuccessImpl _value,
      $Res Function(_$NoteDetailsStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$NoteDetailsStateSuccessImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as NoteDetailsEvent,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteDetailsEventCopyWith<$Res> get event {
    return $NoteDetailsEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$NoteDetailsStateSuccessImpl implements _NoteDetailsStateSuccess {
  const _$NoteDetailsStateSuccessImpl({required this.event});

  @override
  final NoteDetailsEvent event;

  @override
  String toString() {
    return 'NoteDetailsState.success(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteDetailsStateSuccessImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteDetailsStateSuccessImplCopyWith<_$NoteDetailsStateSuccessImpl>
      get copyWith => __$$NoteDetailsStateSuccessImplCopyWithImpl<
          _$NoteDetailsStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteEntity entity) idle,
    required TResult Function() loading,
    required TResult Function(NoteDetailsEvent event) success,
    required TResult Function(String errorMessage) error,
  }) {
    return success(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteEntity entity)? idle,
    TResult? Function()? loading,
    TResult? Function(NoteDetailsEvent event)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteEntity entity)? idle,
    TResult Function()? loading,
    TResult Function(NoteDetailsEvent event)? success,
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
    required TResult Function(_NoteDetailsStateIdle value) idle,
    required TResult Function(_NoteDetailsStateLoading value) loading,
    required TResult Function(_NoteDetailsStateSuccess value) success,
    required TResult Function(_NoteDetailsStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteDetailsStateIdle value)? idle,
    TResult? Function(_NoteDetailsStateLoading value)? loading,
    TResult? Function(_NoteDetailsStateSuccess value)? success,
    TResult? Function(_NoteDetailsStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteDetailsStateIdle value)? idle,
    TResult Function(_NoteDetailsStateLoading value)? loading,
    TResult Function(_NoteDetailsStateSuccess value)? success,
    TResult Function(_NoteDetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NoteDetailsStateSuccess implements NoteDetailsState {
  const factory _NoteDetailsStateSuccess(
      {required final NoteDetailsEvent event}) = _$NoteDetailsStateSuccessImpl;

  NoteDetailsEvent get event;
  @JsonKey(ignore: true)
  _$$NoteDetailsStateSuccessImplCopyWith<_$NoteDetailsStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteDetailsStateErrorImplCopyWith<$Res> {
  factory _$$NoteDetailsStateErrorImplCopyWith(
          _$NoteDetailsStateErrorImpl value,
          $Res Function(_$NoteDetailsStateErrorImpl) then) =
      __$$NoteDetailsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$NoteDetailsStateErrorImplCopyWithImpl<$Res>
    extends _$NoteDetailsStateCopyWithImpl<$Res, _$NoteDetailsStateErrorImpl>
    implements _$$NoteDetailsStateErrorImplCopyWith<$Res> {
  __$$NoteDetailsStateErrorImplCopyWithImpl(_$NoteDetailsStateErrorImpl _value,
      $Res Function(_$NoteDetailsStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$NoteDetailsStateErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteDetailsStateErrorImpl implements _NoteDetailsStateError {
  const _$NoteDetailsStateErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NoteDetailsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteDetailsStateErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteDetailsStateErrorImplCopyWith<_$NoteDetailsStateErrorImpl>
      get copyWith => __$$NoteDetailsStateErrorImplCopyWithImpl<
          _$NoteDetailsStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteEntity entity) idle,
    required TResult Function() loading,
    required TResult Function(NoteDetailsEvent event) success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteEntity entity)? idle,
    TResult? Function()? loading,
    TResult? Function(NoteDetailsEvent event)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteEntity entity)? idle,
    TResult Function()? loading,
    TResult Function(NoteDetailsEvent event)? success,
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
    required TResult Function(_NoteDetailsStateIdle value) idle,
    required TResult Function(_NoteDetailsStateLoading value) loading,
    required TResult Function(_NoteDetailsStateSuccess value) success,
    required TResult Function(_NoteDetailsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteDetailsStateIdle value)? idle,
    TResult? Function(_NoteDetailsStateLoading value)? loading,
    TResult? Function(_NoteDetailsStateSuccess value)? success,
    TResult? Function(_NoteDetailsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteDetailsStateIdle value)? idle,
    TResult Function(_NoteDetailsStateLoading value)? loading,
    TResult Function(_NoteDetailsStateSuccess value)? success,
    TResult Function(_NoteDetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NoteDetailsStateError implements NoteDetailsState {
  const factory _NoteDetailsStateError({required final String errorMessage}) =
      _$NoteDetailsStateErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$NoteDetailsStateErrorImplCopyWith<_$NoteDetailsStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
