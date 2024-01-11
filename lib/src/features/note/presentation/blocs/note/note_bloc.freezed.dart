// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(NoteEntity entity) add,
    required TResult Function(int id, NoteEntity entity) update,
    required TResult Function(int id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(NoteEntity entity)? add,
    TResult? Function(int id, NoteEntity entity)? update,
    TResult? Function(int id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(NoteEntity entity)? add,
    TResult Function(int id, NoteEntity entity)? update,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteEventGetAll value) getAll,
    required TResult Function(_NoteEventAdd value) add,
    required TResult Function(_NoteEventUpdate value) update,
    required TResult Function(_NoteEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteEventGetAll value)? getAll,
    TResult? Function(_NoteEventAdd value)? add,
    TResult? Function(_NoteEventUpdate value)? update,
    TResult? Function(_NoteEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteEventGetAll value)? getAll,
    TResult Function(_NoteEventAdd value)? add,
    TResult Function(_NoteEventUpdate value)? update,
    TResult Function(_NoteEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteEventCopyWith<$Res> {
  factory $NoteEventCopyWith(NoteEvent value, $Res Function(NoteEvent) then) =
      _$NoteEventCopyWithImpl<$Res, NoteEvent>;
}

/// @nodoc
class _$NoteEventCopyWithImpl<$Res, $Val extends NoteEvent>
    implements $NoteEventCopyWith<$Res> {
  _$NoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoteEventGetAllImplCopyWith<$Res> {
  factory _$$NoteEventGetAllImplCopyWith(_$NoteEventGetAllImpl value,
          $Res Function(_$NoteEventGetAllImpl) then) =
      __$$NoteEventGetAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoteEventGetAllImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$NoteEventGetAllImpl>
    implements _$$NoteEventGetAllImplCopyWith<$Res> {
  __$$NoteEventGetAllImplCopyWithImpl(
      _$NoteEventGetAllImpl _value, $Res Function(_$NoteEventGetAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoteEventGetAllImpl implements _NoteEventGetAll {
  const _$NoteEventGetAllImpl();

  @override
  String toString() {
    return 'NoteEvent.getAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoteEventGetAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(NoteEntity entity) add,
    required TResult Function(int id, NoteEntity entity) update,
    required TResult Function(int id) delete,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(NoteEntity entity)? add,
    TResult? Function(int id, NoteEntity entity)? update,
    TResult? Function(int id)? delete,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(NoteEntity entity)? add,
    TResult Function(int id, NoteEntity entity)? update,
    TResult Function(int id)? delete,
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
    required TResult Function(_NoteEventGetAll value) getAll,
    required TResult Function(_NoteEventAdd value) add,
    required TResult Function(_NoteEventUpdate value) update,
    required TResult Function(_NoteEventDelete value) delete,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteEventGetAll value)? getAll,
    TResult? Function(_NoteEventAdd value)? add,
    TResult? Function(_NoteEventUpdate value)? update,
    TResult? Function(_NoteEventDelete value)? delete,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteEventGetAll value)? getAll,
    TResult Function(_NoteEventAdd value)? add,
    TResult Function(_NoteEventUpdate value)? update,
    TResult Function(_NoteEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _NoteEventGetAll implements NoteEvent {
  const factory _NoteEventGetAll() = _$NoteEventGetAllImpl;
}

/// @nodoc
abstract class _$$NoteEventAddImplCopyWith<$Res> {
  factory _$$NoteEventAddImplCopyWith(
          _$NoteEventAddImpl value, $Res Function(_$NoteEventAddImpl) then) =
      __$$NoteEventAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteEntity entity});

  $NoteEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$NoteEventAddImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$NoteEventAddImpl>
    implements _$$NoteEventAddImplCopyWith<$Res> {
  __$$NoteEventAddImplCopyWithImpl(
      _$NoteEventAddImpl _value, $Res Function(_$NoteEventAddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$NoteEventAddImpl(
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

class _$NoteEventAddImpl implements _NoteEventAdd {
  const _$NoteEventAddImpl({required this.entity});

  @override
  final NoteEntity entity;

  @override
  String toString() {
    return 'NoteEvent.add(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteEventAddImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteEventAddImplCopyWith<_$NoteEventAddImpl> get copyWith =>
      __$$NoteEventAddImplCopyWithImpl<_$NoteEventAddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(NoteEntity entity) add,
    required TResult Function(int id, NoteEntity entity) update,
    required TResult Function(int id) delete,
  }) {
    return add(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(NoteEntity entity)? add,
    TResult? Function(int id, NoteEntity entity)? update,
    TResult? Function(int id)? delete,
  }) {
    return add?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(NoteEntity entity)? add,
    TResult Function(int id, NoteEntity entity)? update,
    TResult Function(int id)? delete,
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
    required TResult Function(_NoteEventGetAll value) getAll,
    required TResult Function(_NoteEventAdd value) add,
    required TResult Function(_NoteEventUpdate value) update,
    required TResult Function(_NoteEventDelete value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteEventGetAll value)? getAll,
    TResult? Function(_NoteEventAdd value)? add,
    TResult? Function(_NoteEventUpdate value)? update,
    TResult? Function(_NoteEventDelete value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteEventGetAll value)? getAll,
    TResult Function(_NoteEventAdd value)? add,
    TResult Function(_NoteEventUpdate value)? update,
    TResult Function(_NoteEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _NoteEventAdd implements NoteEvent {
  const factory _NoteEventAdd({required final NoteEntity entity}) =
      _$NoteEventAddImpl;

  NoteEntity get entity;
  @JsonKey(ignore: true)
  _$$NoteEventAddImplCopyWith<_$NoteEventAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteEventUpdateImplCopyWith<$Res> {
  factory _$$NoteEventUpdateImplCopyWith(_$NoteEventUpdateImpl value,
          $Res Function(_$NoteEventUpdateImpl) then) =
      __$$NoteEventUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, NoteEntity entity});

  $NoteEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$NoteEventUpdateImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$NoteEventUpdateImpl>
    implements _$$NoteEventUpdateImplCopyWith<$Res> {
  __$$NoteEventUpdateImplCopyWithImpl(
      _$NoteEventUpdateImpl _value, $Res Function(_$NoteEventUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entity = null,
  }) {
    return _then(_$NoteEventUpdateImpl(
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

class _$NoteEventUpdateImpl implements _NoteEventUpdate {
  const _$NoteEventUpdateImpl({required this.id, required this.entity});

  @override
  final int id;
  @override
  final NoteEntity entity;

  @override
  String toString() {
    return 'NoteEvent.update(id: $id, entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteEventUpdateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteEventUpdateImplCopyWith<_$NoteEventUpdateImpl> get copyWith =>
      __$$NoteEventUpdateImplCopyWithImpl<_$NoteEventUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(NoteEntity entity) add,
    required TResult Function(int id, NoteEntity entity) update,
    required TResult Function(int id) delete,
  }) {
    return update(id, entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(NoteEntity entity)? add,
    TResult? Function(int id, NoteEntity entity)? update,
    TResult? Function(int id)? delete,
  }) {
    return update?.call(id, entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(NoteEntity entity)? add,
    TResult Function(int id, NoteEntity entity)? update,
    TResult Function(int id)? delete,
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
    required TResult Function(_NoteEventGetAll value) getAll,
    required TResult Function(_NoteEventAdd value) add,
    required TResult Function(_NoteEventUpdate value) update,
    required TResult Function(_NoteEventDelete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteEventGetAll value)? getAll,
    TResult? Function(_NoteEventAdd value)? add,
    TResult? Function(_NoteEventUpdate value)? update,
    TResult? Function(_NoteEventDelete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteEventGetAll value)? getAll,
    TResult Function(_NoteEventAdd value)? add,
    TResult Function(_NoteEventUpdate value)? update,
    TResult Function(_NoteEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _NoteEventUpdate implements NoteEvent {
  const factory _NoteEventUpdate(
      {required final int id,
      required final NoteEntity entity}) = _$NoteEventUpdateImpl;

  int get id;
  NoteEntity get entity;
  @JsonKey(ignore: true)
  _$$NoteEventUpdateImplCopyWith<_$NoteEventUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteEventDeleteImplCopyWith<$Res> {
  factory _$$NoteEventDeleteImplCopyWith(_$NoteEventDeleteImpl value,
          $Res Function(_$NoteEventDeleteImpl) then) =
      __$$NoteEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$NoteEventDeleteImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$NoteEventDeleteImpl>
    implements _$$NoteEventDeleteImplCopyWith<$Res> {
  __$$NoteEventDeleteImplCopyWithImpl(
      _$NoteEventDeleteImpl _value, $Res Function(_$NoteEventDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$NoteEventDeleteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NoteEventDeleteImpl implements _NoteEventDelete {
  const _$NoteEventDeleteImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'NoteEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteEventDeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteEventDeleteImplCopyWith<_$NoteEventDeleteImpl> get copyWith =>
      __$$NoteEventDeleteImplCopyWithImpl<_$NoteEventDeleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(NoteEntity entity) add,
    required TResult Function(int id, NoteEntity entity) update,
    required TResult Function(int id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(NoteEntity entity)? add,
    TResult? Function(int id, NoteEntity entity)? update,
    TResult? Function(int id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(NoteEntity entity)? add,
    TResult Function(int id, NoteEntity entity)? update,
    TResult Function(int id)? delete,
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
    required TResult Function(_NoteEventGetAll value) getAll,
    required TResult Function(_NoteEventAdd value) add,
    required TResult Function(_NoteEventUpdate value) update,
    required TResult Function(_NoteEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteEventGetAll value)? getAll,
    TResult? Function(_NoteEventAdd value)? add,
    TResult? Function(_NoteEventUpdate value)? update,
    TResult? Function(_NoteEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteEventGetAll value)? getAll,
    TResult Function(_NoteEventAdd value)? add,
    TResult Function(_NoteEventUpdate value)? update,
    TResult Function(_NoteEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _NoteEventDelete implements NoteEvent {
  const factory _NoteEventDelete({required final int id}) =
      _$NoteEventDeleteImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$NoteEventDeleteImplCopyWith<_$NoteEventDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteEntity> entityList) idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteEntity> entityList)? idle,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteEntity> entityList)? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteStateIdle value) idle,
    required TResult Function(_NoteStateLoading value) loading,
    required TResult Function(_NoteStateSuccess value) success,
    required TResult Function(_NoteStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteStateIdle value)? idle,
    TResult? Function(_NoteStateLoading value)? loading,
    TResult? Function(_NoteStateSuccess value)? success,
    TResult? Function(_NoteStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteStateIdle value)? idle,
    TResult Function(_NoteStateLoading value)? loading,
    TResult Function(_NoteStateSuccess value)? success,
    TResult Function(_NoteStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteStateCopyWith<$Res> {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) then) =
      _$NoteStateCopyWithImpl<$Res, NoteState>;
}

/// @nodoc
class _$NoteStateCopyWithImpl<$Res, $Val extends NoteState>
    implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoteStateIdleImplCopyWith<$Res> {
  factory _$$NoteStateIdleImplCopyWith(
          _$NoteStateIdleImpl value, $Res Function(_$NoteStateIdleImpl) then) =
      __$$NoteStateIdleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NoteEntity> entityList});
}

/// @nodoc
class __$$NoteStateIdleImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateIdleImpl>
    implements _$$NoteStateIdleImplCopyWith<$Res> {
  __$$NoteStateIdleImplCopyWithImpl(
      _$NoteStateIdleImpl _value, $Res Function(_$NoteStateIdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityList = null,
  }) {
    return _then(_$NoteStateIdleImpl(
      entityList: null == entityList
          ? _value._entityList
          : entityList // ignore: cast_nullable_to_non_nullable
              as List<NoteEntity>,
    ));
  }
}

/// @nodoc

class _$NoteStateIdleImpl implements _NoteStateIdle {
  const _$NoteStateIdleImpl({required final List<NoteEntity> entityList})
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
    return 'NoteState.idle(entityList: $entityList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteStateIdleImpl &&
            const DeepCollectionEquality()
                .equals(other._entityList, _entityList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_entityList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteStateIdleImplCopyWith<_$NoteStateIdleImpl> get copyWith =>
      __$$NoteStateIdleImplCopyWithImpl<_$NoteStateIdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteEntity> entityList) idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return idle(entityList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteEntity> entityList)? idle,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return idle?.call(entityList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteEntity> entityList)? idle,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_NoteStateIdle value) idle,
    required TResult Function(_NoteStateLoading value) loading,
    required TResult Function(_NoteStateSuccess value) success,
    required TResult Function(_NoteStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteStateIdle value)? idle,
    TResult? Function(_NoteStateLoading value)? loading,
    TResult? Function(_NoteStateSuccess value)? success,
    TResult? Function(_NoteStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteStateIdle value)? idle,
    TResult Function(_NoteStateLoading value)? loading,
    TResult Function(_NoteStateSuccess value)? success,
    TResult Function(_NoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _NoteStateIdle implements NoteState {
  const factory _NoteStateIdle({required final List<NoteEntity> entityList}) =
      _$NoteStateIdleImpl;

  List<NoteEntity> get entityList;
  @JsonKey(ignore: true)
  _$$NoteStateIdleImplCopyWith<_$NoteStateIdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteStateLoadingImplCopyWith<$Res> {
  factory _$$NoteStateLoadingImplCopyWith(_$NoteStateLoadingImpl value,
          $Res Function(_$NoteStateLoadingImpl) then) =
      __$$NoteStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoteStateLoadingImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateLoadingImpl>
    implements _$$NoteStateLoadingImplCopyWith<$Res> {
  __$$NoteStateLoadingImplCopyWithImpl(_$NoteStateLoadingImpl _value,
      $Res Function(_$NoteStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoteStateLoadingImpl implements _NoteStateLoading {
  const _$NoteStateLoadingImpl();

  @override
  String toString() {
    return 'NoteState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoteStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteEntity> entityList) idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteEntity> entityList)? idle,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteEntity> entityList)? idle,
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
    required TResult Function(_NoteStateIdle value) idle,
    required TResult Function(_NoteStateLoading value) loading,
    required TResult Function(_NoteStateSuccess value) success,
    required TResult Function(_NoteStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteStateIdle value)? idle,
    TResult? Function(_NoteStateLoading value)? loading,
    TResult? Function(_NoteStateSuccess value)? success,
    TResult? Function(_NoteStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteStateIdle value)? idle,
    TResult Function(_NoteStateLoading value)? loading,
    TResult Function(_NoteStateSuccess value)? success,
    TResult Function(_NoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NoteStateLoading implements NoteState {
  const factory _NoteStateLoading() = _$NoteStateLoadingImpl;
}

/// @nodoc
abstract class _$$NoteStateSuccessImplCopyWith<$Res> {
  factory _$$NoteStateSuccessImplCopyWith(_$NoteStateSuccessImpl value,
          $Res Function(_$NoteStateSuccessImpl) then) =
      __$$NoteStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoteStateSuccessImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateSuccessImpl>
    implements _$$NoteStateSuccessImplCopyWith<$Res> {
  __$$NoteStateSuccessImplCopyWithImpl(_$NoteStateSuccessImpl _value,
      $Res Function(_$NoteStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoteStateSuccessImpl implements _NoteStateSuccess {
  const _$NoteStateSuccessImpl();

  @override
  String toString() {
    return 'NoteState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoteStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteEntity> entityList) idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteEntity> entityList)? idle,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteEntity> entityList)? idle,
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
    required TResult Function(_NoteStateIdle value) idle,
    required TResult Function(_NoteStateLoading value) loading,
    required TResult Function(_NoteStateSuccess value) success,
    required TResult Function(_NoteStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteStateIdle value)? idle,
    TResult? Function(_NoteStateLoading value)? loading,
    TResult? Function(_NoteStateSuccess value)? success,
    TResult? Function(_NoteStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteStateIdle value)? idle,
    TResult Function(_NoteStateLoading value)? loading,
    TResult Function(_NoteStateSuccess value)? success,
    TResult Function(_NoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NoteStateSuccess implements NoteState {
  const factory _NoteStateSuccess() = _$NoteStateSuccessImpl;
}

/// @nodoc
abstract class _$$NoteStateErrorImplCopyWith<$Res> {
  factory _$$NoteStateErrorImplCopyWith(_$NoteStateErrorImpl value,
          $Res Function(_$NoteStateErrorImpl) then) =
      __$$NoteStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$NoteStateErrorImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateErrorImpl>
    implements _$$NoteStateErrorImplCopyWith<$Res> {
  __$$NoteStateErrorImplCopyWithImpl(
      _$NoteStateErrorImpl _value, $Res Function(_$NoteStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$NoteStateErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteStateErrorImpl implements _NoteStateError {
  const _$NoteStateErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NoteState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteStateErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteStateErrorImplCopyWith<_$NoteStateErrorImpl> get copyWith =>
      __$$NoteStateErrorImplCopyWithImpl<_$NoteStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NoteEntity> entityList) idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NoteEntity> entityList)? idle,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NoteEntity> entityList)? idle,
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
    required TResult Function(_NoteStateIdle value) idle,
    required TResult Function(_NoteStateLoading value) loading,
    required TResult Function(_NoteStateSuccess value) success,
    required TResult Function(_NoteStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoteStateIdle value)? idle,
    TResult? Function(_NoteStateLoading value)? loading,
    TResult? Function(_NoteStateSuccess value)? success,
    TResult? Function(_NoteStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteStateIdle value)? idle,
    TResult Function(_NoteStateLoading value)? loading,
    TResult Function(_NoteStateSuccess value)? success,
    TResult Function(_NoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NoteStateError implements NoteState {
  const factory _NoteStateError({required final String errorMessage}) =
      _$NoteStateErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$NoteStateErrorImplCopyWith<_$NoteStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
