// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_add_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteAddEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) get,
    required TResult Function(NoteEntity entity) add,
    required TResult Function(int id, NoteEntity entity) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? get,
    TResult? Function(NoteEntity entity)? add,
    TResult? Function(int id, NoteEntity entity)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? get,
    TResult Function(NoteEntity entity)? add,
    TResult Function(int id, NoteEntity entity)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteAddEditEventGet value) get,
    required TResult Function(_NoteAddEditEventAdd value) add,
    required TResult Function(_NoteAddEditEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteAddEditEventGet value)? get,
    TResult? Function(_NoteAddEditEventAdd value)? add,
    TResult? Function(_NoteAddEditEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteAddEditEventGet value)? get,
    TResult Function(_NoteAddEditEventAdd value)? add,
    TResult Function(_NoteAddEditEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteAddEditEventCopyWith<$Res> {
  factory $NoteAddEditEventCopyWith(
          NoteAddEditEvent value, $Res Function(NoteAddEditEvent) then) =
      _$NoteAddEditEventCopyWithImpl<$Res, NoteAddEditEvent>;
}

/// @nodoc
class _$NoteAddEditEventCopyWithImpl<$Res, $Val extends NoteAddEditEvent>
    implements $NoteAddEditEventCopyWith<$Res> {
  _$NoteAddEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoteAddEditEventGetImplCopyWith<$Res> {
  factory _$$NoteAddEditEventGetImplCopyWith(_$NoteAddEditEventGetImpl value,
          $Res Function(_$NoteAddEditEventGetImpl) then) =
      __$$NoteAddEditEventGetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$NoteAddEditEventGetImplCopyWithImpl<$Res>
    extends _$NoteAddEditEventCopyWithImpl<$Res, _$NoteAddEditEventGetImpl>
    implements _$$NoteAddEditEventGetImplCopyWith<$Res> {
  __$$NoteAddEditEventGetImplCopyWithImpl(_$NoteAddEditEventGetImpl _value,
      $Res Function(_$NoteAddEditEventGetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$NoteAddEditEventGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NoteAddEditEventGetImpl implements _NoteAddEditEventGet {
  const _$NoteAddEditEventGetImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'NoteAddEditEvent.get(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteAddEditEventGetImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteAddEditEventGetImplCopyWith<_$NoteAddEditEventGetImpl> get copyWith =>
      __$$NoteAddEditEventGetImplCopyWithImpl<_$NoteAddEditEventGetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) get,
    required TResult Function(NoteEntity entity) add,
    required TResult Function(int id, NoteEntity entity) update,
  }) {
    return get(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? get,
    TResult? Function(NoteEntity entity)? add,
    TResult? Function(int id, NoteEntity entity)? update,
  }) {
    return get?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? get,
    TResult Function(NoteEntity entity)? add,
    TResult Function(int id, NoteEntity entity)? update,
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
    required TResult Function(_NoteAddEditEventGet value) get,
    required TResult Function(_NoteAddEditEventAdd value) add,
    required TResult Function(_NoteAddEditEventUpdate value) update,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteAddEditEventGet value)? get,
    TResult? Function(_NoteAddEditEventAdd value)? add,
    TResult? Function(_NoteAddEditEventUpdate value)? update,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteAddEditEventGet value)? get,
    TResult Function(_NoteAddEditEventAdd value)? add,
    TResult Function(_NoteAddEditEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _NoteAddEditEventGet implements NoteAddEditEvent {
  const factory _NoteAddEditEventGet({required final int id}) =
      _$NoteAddEditEventGetImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$NoteAddEditEventGetImplCopyWith<_$NoteAddEditEventGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteAddEditEventAddImplCopyWith<$Res> {
  factory _$$NoteAddEditEventAddImplCopyWith(_$NoteAddEditEventAddImpl value,
          $Res Function(_$NoteAddEditEventAddImpl) then) =
      __$$NoteAddEditEventAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteEntity entity});

  $NoteEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$NoteAddEditEventAddImplCopyWithImpl<$Res>
    extends _$NoteAddEditEventCopyWithImpl<$Res, _$NoteAddEditEventAddImpl>
    implements _$$NoteAddEditEventAddImplCopyWith<$Res> {
  __$$NoteAddEditEventAddImplCopyWithImpl(_$NoteAddEditEventAddImpl _value,
      $Res Function(_$NoteAddEditEventAddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$NoteAddEditEventAddImpl(
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

class _$NoteAddEditEventAddImpl implements _NoteAddEditEventAdd {
  const _$NoteAddEditEventAddImpl({required this.entity});

  @override
  final NoteEntity entity;

  @override
  String toString() {
    return 'NoteAddEditEvent.add(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteAddEditEventAddImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteAddEditEventAddImplCopyWith<_$NoteAddEditEventAddImpl> get copyWith =>
      __$$NoteAddEditEventAddImplCopyWithImpl<_$NoteAddEditEventAddImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) get,
    required TResult Function(NoteEntity entity) add,
    required TResult Function(int id, NoteEntity entity) update,
  }) {
    return add(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? get,
    TResult? Function(NoteEntity entity)? add,
    TResult? Function(int id, NoteEntity entity)? update,
  }) {
    return add?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? get,
    TResult Function(NoteEntity entity)? add,
    TResult Function(int id, NoteEntity entity)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteAddEditEventGet value) get,
    required TResult Function(_NoteAddEditEventAdd value) add,
    required TResult Function(_NoteAddEditEventUpdate value) update,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteAddEditEventGet value)? get,
    TResult? Function(_NoteAddEditEventAdd value)? add,
    TResult? Function(_NoteAddEditEventUpdate value)? update,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteAddEditEventGet value)? get,
    TResult Function(_NoteAddEditEventAdd value)? add,
    TResult Function(_NoteAddEditEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _NoteAddEditEventAdd implements NoteAddEditEvent {
  const factory _NoteAddEditEventAdd({required final NoteEntity entity}) =
      _$NoteAddEditEventAddImpl;

  NoteEntity get entity;
  @JsonKey(ignore: true)
  _$$NoteAddEditEventAddImplCopyWith<_$NoteAddEditEventAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteAddEditEventUpdateImplCopyWith<$Res> {
  factory _$$NoteAddEditEventUpdateImplCopyWith(
          _$NoteAddEditEventUpdateImpl value,
          $Res Function(_$NoteAddEditEventUpdateImpl) then) =
      __$$NoteAddEditEventUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, NoteEntity entity});

  $NoteEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$NoteAddEditEventUpdateImplCopyWithImpl<$Res>
    extends _$NoteAddEditEventCopyWithImpl<$Res, _$NoteAddEditEventUpdateImpl>
    implements _$$NoteAddEditEventUpdateImplCopyWith<$Res> {
  __$$NoteAddEditEventUpdateImplCopyWithImpl(
      _$NoteAddEditEventUpdateImpl _value,
      $Res Function(_$NoteAddEditEventUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entity = null,
  }) {
    return _then(_$NoteAddEditEventUpdateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$NoteAddEditEventUpdateImpl implements _NoteAddEditEventUpdate {
  const _$NoteAddEditEventUpdateImpl({required this.id, required this.entity});

  @override
  final int id;
  @override
  final NoteEntity entity;

  @override
  String toString() {
    return 'NoteAddEditEvent.update(id: $id, entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteAddEditEventUpdateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteAddEditEventUpdateImplCopyWith<_$NoteAddEditEventUpdateImpl>
      get copyWith => __$$NoteAddEditEventUpdateImplCopyWithImpl<
          _$NoteAddEditEventUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) get,
    required TResult Function(NoteEntity entity) add,
    required TResult Function(int id, NoteEntity entity) update,
  }) {
    return update(id, entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? get,
    TResult? Function(NoteEntity entity)? add,
    TResult? Function(int id, NoteEntity entity)? update,
  }) {
    return update?.call(id, entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? get,
    TResult Function(NoteEntity entity)? add,
    TResult Function(int id, NoteEntity entity)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(id, entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteAddEditEventGet value) get,
    required TResult Function(_NoteAddEditEventAdd value) add,
    required TResult Function(_NoteAddEditEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteAddEditEventGet value)? get,
    TResult? Function(_NoteAddEditEventAdd value)? add,
    TResult? Function(_NoteAddEditEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteAddEditEventGet value)? get,
    TResult Function(_NoteAddEditEventAdd value)? add,
    TResult Function(_NoteAddEditEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _NoteAddEditEventUpdate implements NoteAddEditEvent {
  const factory _NoteAddEditEventUpdate(
      {required final int id,
      required final NoteEntity entity}) = _$NoteAddEditEventUpdateImpl;

  int get id;
  NoteEntity get entity;
  @JsonKey(ignore: true)
  _$$NoteAddEditEventUpdateImplCopyWith<_$NoteAddEditEventUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteAddEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteEntity entity) idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteEntity entity)? idle,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteEntity entity)? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteAddEditStateIdle value) idle,
    required TResult Function(_NoteAddEditStateLoading value) loading,
    required TResult Function(_NoteAddEditStateSuccess value) success,
    required TResult Function(_NoteAddEditStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteAddEditStateIdle value)? idle,
    TResult? Function(_NoteAddEditStateLoading value)? loading,
    TResult? Function(_NoteAddEditStateSuccess value)? success,
    TResult? Function(_NoteAddEditStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteAddEditStateIdle value)? idle,
    TResult Function(_NoteAddEditStateLoading value)? loading,
    TResult Function(_NoteAddEditStateSuccess value)? success,
    TResult Function(_NoteAddEditStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteAddEditStateCopyWith<$Res> {
  factory $NoteAddEditStateCopyWith(
          NoteAddEditState value, $Res Function(NoteAddEditState) then) =
      _$NoteAddEditStateCopyWithImpl<$Res, NoteAddEditState>;
}

/// @nodoc
class _$NoteAddEditStateCopyWithImpl<$Res, $Val extends NoteAddEditState>
    implements $NoteAddEditStateCopyWith<$Res> {
  _$NoteAddEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoteAddEditStateIdleImplCopyWith<$Res> {
  factory _$$NoteAddEditStateIdleImplCopyWith(_$NoteAddEditStateIdleImpl value,
          $Res Function(_$NoteAddEditStateIdleImpl) then) =
      __$$NoteAddEditStateIdleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteEntity entity});

  $NoteEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$NoteAddEditStateIdleImplCopyWithImpl<$Res>
    extends _$NoteAddEditStateCopyWithImpl<$Res, _$NoteAddEditStateIdleImpl>
    implements _$$NoteAddEditStateIdleImplCopyWith<$Res> {
  __$$NoteAddEditStateIdleImplCopyWithImpl(_$NoteAddEditStateIdleImpl _value,
      $Res Function(_$NoteAddEditStateIdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$NoteAddEditStateIdleImpl(
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

class _$NoteAddEditStateIdleImpl implements _NoteAddEditStateIdle {
  const _$NoteAddEditStateIdleImpl({required this.entity});

  @override
  final NoteEntity entity;

  @override
  String toString() {
    return 'NoteAddEditState.idle(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteAddEditStateIdleImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteAddEditStateIdleImplCopyWith<_$NoteAddEditStateIdleImpl>
      get copyWith =>
          __$$NoteAddEditStateIdleImplCopyWithImpl<_$NoteAddEditStateIdleImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteEntity entity) idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return idle(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteEntity entity)? idle,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return idle?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteEntity entity)? idle,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_NoteAddEditStateIdle value) idle,
    required TResult Function(_NoteAddEditStateLoading value) loading,
    required TResult Function(_NoteAddEditStateSuccess value) success,
    required TResult Function(_NoteAddEditStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteAddEditStateIdle value)? idle,
    TResult? Function(_NoteAddEditStateLoading value)? loading,
    TResult? Function(_NoteAddEditStateSuccess value)? success,
    TResult? Function(_NoteAddEditStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteAddEditStateIdle value)? idle,
    TResult Function(_NoteAddEditStateLoading value)? loading,
    TResult Function(_NoteAddEditStateSuccess value)? success,
    TResult Function(_NoteAddEditStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _NoteAddEditStateIdle implements NoteAddEditState {
  const factory _NoteAddEditStateIdle({required final NoteEntity entity}) =
      _$NoteAddEditStateIdleImpl;

  NoteEntity get entity;
  @JsonKey(ignore: true)
  _$$NoteAddEditStateIdleImplCopyWith<_$NoteAddEditStateIdleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteAddEditStateLoadingImplCopyWith<$Res> {
  factory _$$NoteAddEditStateLoadingImplCopyWith(
          _$NoteAddEditStateLoadingImpl value,
          $Res Function(_$NoteAddEditStateLoadingImpl) then) =
      __$$NoteAddEditStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoteAddEditStateLoadingImplCopyWithImpl<$Res>
    extends _$NoteAddEditStateCopyWithImpl<$Res, _$NoteAddEditStateLoadingImpl>
    implements _$$NoteAddEditStateLoadingImplCopyWith<$Res> {
  __$$NoteAddEditStateLoadingImplCopyWithImpl(
      _$NoteAddEditStateLoadingImpl _value,
      $Res Function(_$NoteAddEditStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoteAddEditStateLoadingImpl implements _NoteAddEditStateLoading {
  const _$NoteAddEditStateLoadingImpl();

  @override
  String toString() {
    return 'NoteAddEditState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteAddEditStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteEntity entity) idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteEntity entity)? idle,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteEntity entity)? idle,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_NoteAddEditStateIdle value) idle,
    required TResult Function(_NoteAddEditStateLoading value) loading,
    required TResult Function(_NoteAddEditStateSuccess value) success,
    required TResult Function(_NoteAddEditStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteAddEditStateIdle value)? idle,
    TResult? Function(_NoteAddEditStateLoading value)? loading,
    TResult? Function(_NoteAddEditStateSuccess value)? success,
    TResult? Function(_NoteAddEditStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteAddEditStateIdle value)? idle,
    TResult Function(_NoteAddEditStateLoading value)? loading,
    TResult Function(_NoteAddEditStateSuccess value)? success,
    TResult Function(_NoteAddEditStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NoteAddEditStateLoading implements NoteAddEditState {
  const factory _NoteAddEditStateLoading() = _$NoteAddEditStateLoadingImpl;
}

/// @nodoc
abstract class _$$NoteAddEditStateSuccessImplCopyWith<$Res> {
  factory _$$NoteAddEditStateSuccessImplCopyWith(
          _$NoteAddEditStateSuccessImpl value,
          $Res Function(_$NoteAddEditStateSuccessImpl) then) =
      __$$NoteAddEditStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoteAddEditStateSuccessImplCopyWithImpl<$Res>
    extends _$NoteAddEditStateCopyWithImpl<$Res, _$NoteAddEditStateSuccessImpl>
    implements _$$NoteAddEditStateSuccessImplCopyWith<$Res> {
  __$$NoteAddEditStateSuccessImplCopyWithImpl(
      _$NoteAddEditStateSuccessImpl _value,
      $Res Function(_$NoteAddEditStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoteAddEditStateSuccessImpl implements _NoteAddEditStateSuccess {
  const _$NoteAddEditStateSuccessImpl();

  @override
  String toString() {
    return 'NoteAddEditState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteAddEditStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteEntity entity) idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteEntity entity)? idle,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteEntity entity)? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteAddEditStateIdle value) idle,
    required TResult Function(_NoteAddEditStateLoading value) loading,
    required TResult Function(_NoteAddEditStateSuccess value) success,
    required TResult Function(_NoteAddEditStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteAddEditStateIdle value)? idle,
    TResult? Function(_NoteAddEditStateLoading value)? loading,
    TResult? Function(_NoteAddEditStateSuccess value)? success,
    TResult? Function(_NoteAddEditStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteAddEditStateIdle value)? idle,
    TResult Function(_NoteAddEditStateLoading value)? loading,
    TResult Function(_NoteAddEditStateSuccess value)? success,
    TResult Function(_NoteAddEditStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NoteAddEditStateSuccess implements NoteAddEditState {
  const factory _NoteAddEditStateSuccess() = _$NoteAddEditStateSuccessImpl;
}

/// @nodoc
abstract class _$$NoteAddEditStateErrorImplCopyWith<$Res> {
  factory _$$NoteAddEditStateErrorImplCopyWith(
          _$NoteAddEditStateErrorImpl value,
          $Res Function(_$NoteAddEditStateErrorImpl) then) =
      __$$NoteAddEditStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$NoteAddEditStateErrorImplCopyWithImpl<$Res>
    extends _$NoteAddEditStateCopyWithImpl<$Res, _$NoteAddEditStateErrorImpl>
    implements _$$NoteAddEditStateErrorImplCopyWith<$Res> {
  __$$NoteAddEditStateErrorImplCopyWithImpl(_$NoteAddEditStateErrorImpl _value,
      $Res Function(_$NoteAddEditStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$NoteAddEditStateErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteAddEditStateErrorImpl implements _NoteAddEditStateError {
  const _$NoteAddEditStateErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NoteAddEditState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteAddEditStateErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteAddEditStateErrorImplCopyWith<_$NoteAddEditStateErrorImpl>
      get copyWith => __$$NoteAddEditStateErrorImplCopyWithImpl<
          _$NoteAddEditStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteEntity entity) idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteEntity entity)? idle,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteEntity entity)? idle,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_NoteAddEditStateIdle value) idle,
    required TResult Function(_NoteAddEditStateLoading value) loading,
    required TResult Function(_NoteAddEditStateSuccess value) success,
    required TResult Function(_NoteAddEditStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteAddEditStateIdle value)? idle,
    TResult? Function(_NoteAddEditStateLoading value)? loading,
    TResult? Function(_NoteAddEditStateSuccess value)? success,
    TResult? Function(_NoteAddEditStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteAddEditStateIdle value)? idle,
    TResult Function(_NoteAddEditStateLoading value)? loading,
    TResult Function(_NoteAddEditStateSuccess value)? success,
    TResult Function(_NoteAddEditStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NoteAddEditStateError implements NoteAddEditState {
  const factory _NoteAddEditStateError({required final String errorMessage}) =
      _$NoteAddEditStateErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$NoteAddEditStateErrorImplCopyWith<_$NoteAddEditStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}