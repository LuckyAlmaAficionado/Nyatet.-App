// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllTodoToday,
    required TResult Function() getAllTodoHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllTodoToday,
    TResult? Function()? getAllTodoHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllTodoToday,
    TResult Function()? getAllTodoHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllTodoToday value) getAllTodoToday,
    required TResult Function(_GetAllTodoHistory value) getAllTodoHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllTodoToday value)? getAllTodoToday,
    TResult? Function(_GetAllTodoHistory value)? getAllTodoHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllTodoToday value)? getAllTodoToday,
    TResult Function(_GetAllTodoHistory value)? getAllTodoHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TodoEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllTodoToday,
    required TResult Function() getAllTodoHistory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllTodoToday,
    TResult? Function()? getAllTodoHistory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllTodoToday,
    TResult Function()? getAllTodoHistory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllTodoToday value) getAllTodoToday,
    required TResult Function(_GetAllTodoHistory value) getAllTodoHistory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllTodoToday value)? getAllTodoToday,
    TResult? Function(_GetAllTodoHistory value)? getAllTodoHistory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllTodoToday value)? getAllTodoToday,
    TResult Function(_GetAllTodoHistory value)? getAllTodoHistory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TodoEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllTodoTodayImplCopyWith<$Res> {
  factory _$$GetAllTodoTodayImplCopyWith(_$GetAllTodoTodayImpl value,
          $Res Function(_$GetAllTodoTodayImpl) then) =
      __$$GetAllTodoTodayImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllTodoTodayImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetAllTodoTodayImpl>
    implements _$$GetAllTodoTodayImplCopyWith<$Res> {
  __$$GetAllTodoTodayImplCopyWithImpl(
      _$GetAllTodoTodayImpl _value, $Res Function(_$GetAllTodoTodayImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllTodoTodayImpl implements _GetAllTodoToday {
  const _$GetAllTodoTodayImpl();

  @override
  String toString() {
    return 'TodoEvent.getAllTodoToday()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllTodoTodayImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllTodoToday,
    required TResult Function() getAllTodoHistory,
  }) {
    return getAllTodoToday();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllTodoToday,
    TResult? Function()? getAllTodoHistory,
  }) {
    return getAllTodoToday?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllTodoToday,
    TResult Function()? getAllTodoHistory,
    required TResult orElse(),
  }) {
    if (getAllTodoToday != null) {
      return getAllTodoToday();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllTodoToday value) getAllTodoToday,
    required TResult Function(_GetAllTodoHistory value) getAllTodoHistory,
  }) {
    return getAllTodoToday(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllTodoToday value)? getAllTodoToday,
    TResult? Function(_GetAllTodoHistory value)? getAllTodoHistory,
  }) {
    return getAllTodoToday?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllTodoToday value)? getAllTodoToday,
    TResult Function(_GetAllTodoHistory value)? getAllTodoHistory,
    required TResult orElse(),
  }) {
    if (getAllTodoToday != null) {
      return getAllTodoToday(this);
    }
    return orElse();
  }
}

abstract class _GetAllTodoToday implements TodoEvent {
  const factory _GetAllTodoToday() = _$GetAllTodoTodayImpl;
}

/// @nodoc
abstract class _$$GetAllTodoHistoryImplCopyWith<$Res> {
  factory _$$GetAllTodoHistoryImplCopyWith(_$GetAllTodoHistoryImpl value,
          $Res Function(_$GetAllTodoHistoryImpl) then) =
      __$$GetAllTodoHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllTodoHistoryImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetAllTodoHistoryImpl>
    implements _$$GetAllTodoHistoryImplCopyWith<$Res> {
  __$$GetAllTodoHistoryImplCopyWithImpl(_$GetAllTodoHistoryImpl _value,
      $Res Function(_$GetAllTodoHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllTodoHistoryImpl implements _GetAllTodoHistory {
  const _$GetAllTodoHistoryImpl();

  @override
  String toString() {
    return 'TodoEvent.getAllTodoHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllTodoHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllTodoToday,
    required TResult Function() getAllTodoHistory,
  }) {
    return getAllTodoHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllTodoToday,
    TResult? Function()? getAllTodoHistory,
  }) {
    return getAllTodoHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllTodoToday,
    TResult Function()? getAllTodoHistory,
    required TResult orElse(),
  }) {
    if (getAllTodoHistory != null) {
      return getAllTodoHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllTodoToday value) getAllTodoToday,
    required TResult Function(_GetAllTodoHistory value) getAllTodoHistory,
  }) {
    return getAllTodoHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllTodoToday value)? getAllTodoToday,
    TResult? Function(_GetAllTodoHistory value)? getAllTodoHistory,
  }) {
    return getAllTodoHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllTodoToday value)? getAllTodoToday,
    TResult Function(_GetAllTodoHistory value)? getAllTodoHistory,
    required TResult orElse(),
  }) {
    if (getAllTodoHistory != null) {
      return getAllTodoHistory(this);
    }
    return orElse();
  }
}

abstract class _GetAllTodoHistory implements TodoEvent {
  const factory _GetAllTodoHistory() = _$GetAllTodoHistoryImpl;
}

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Todo> todo) loadedTodoToday,
    required TResult Function(Map<String, List<Todo>>? todo) loadedTodoHistory,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Todo> todo)? loadedTodoToday,
    TResult? Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todo)? loadedTodoToday,
    TResult Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedTodoToday value) loadedTodoToday,
    required TResult Function(_LoadedTodoHistory value) loadedTodoHistory,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult? Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TodoState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Todo> todo) loadedTodoToday,
    required TResult Function(Map<String, List<Todo>>? todo) loadedTodoHistory,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Todo> todo)? loadedTodoToday,
    TResult? Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todo)? loadedTodoToday,
    TResult Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedTodoToday value) loadedTodoToday,
    required TResult Function(_LoadedTodoHistory value) loadedTodoHistory,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult? Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodoState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedTodoTodayImplCopyWith<$Res> {
  factory _$$LoadedTodoTodayImplCopyWith(_$LoadedTodoTodayImpl value,
          $Res Function(_$LoadedTodoTodayImpl) then) =
      __$$LoadedTodoTodayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Todo> todo});
}

/// @nodoc
class __$$LoadedTodoTodayImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$LoadedTodoTodayImpl>
    implements _$$LoadedTodoTodayImplCopyWith<$Res> {
  __$$LoadedTodoTodayImplCopyWithImpl(
      _$LoadedTodoTodayImpl _value, $Res Function(_$LoadedTodoTodayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$LoadedTodoTodayImpl(
      null == todo
          ? _value._todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$LoadedTodoTodayImpl implements _LoadedTodoToday {
  const _$LoadedTodoTodayImpl(final List<Todo> todo) : _todo = todo;

  final List<Todo> _todo;
  @override
  List<Todo> get todo {
    if (_todo is EqualUnmodifiableListView) return _todo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todo);
  }

  @override
  String toString() {
    return 'TodoState.loadedTodoToday(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedTodoTodayImpl &&
            const DeepCollectionEquality().equals(other._todo, _todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedTodoTodayImplCopyWith<_$LoadedTodoTodayImpl> get copyWith =>
      __$$LoadedTodoTodayImplCopyWithImpl<_$LoadedTodoTodayImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Todo> todo) loadedTodoToday,
    required TResult Function(Map<String, List<Todo>>? todo) loadedTodoHistory,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return loadedTodoToday(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Todo> todo)? loadedTodoToday,
    TResult? Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return loadedTodoToday?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todo)? loadedTodoToday,
    TResult Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loadedTodoToday != null) {
      return loadedTodoToday(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedTodoToday value) loadedTodoToday,
    required TResult Function(_LoadedTodoHistory value) loadedTodoHistory,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loadedTodoToday(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult? Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loadedTodoToday?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedTodoToday != null) {
      return loadedTodoToday(this);
    }
    return orElse();
  }
}

abstract class _LoadedTodoToday implements TodoState {
  const factory _LoadedTodoToday(final List<Todo> todo) = _$LoadedTodoTodayImpl;

  List<Todo> get todo;
  @JsonKey(ignore: true)
  _$$LoadedTodoTodayImplCopyWith<_$LoadedTodoTodayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedTodoHistoryImplCopyWith<$Res> {
  factory _$$LoadedTodoHistoryImplCopyWith(_$LoadedTodoHistoryImpl value,
          $Res Function(_$LoadedTodoHistoryImpl) then) =
      __$$LoadedTodoHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, List<Todo>>? todo});
}

/// @nodoc
class __$$LoadedTodoHistoryImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$LoadedTodoHistoryImpl>
    implements _$$LoadedTodoHistoryImplCopyWith<$Res> {
  __$$LoadedTodoHistoryImplCopyWithImpl(_$LoadedTodoHistoryImpl _value,
      $Res Function(_$LoadedTodoHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_$LoadedTodoHistoryImpl(
      freezed == todo
          ? _value._todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Todo>>?,
    ));
  }
}

/// @nodoc

class _$LoadedTodoHistoryImpl implements _LoadedTodoHistory {
  const _$LoadedTodoHistoryImpl(final Map<String, List<Todo>>? todo)
      : _todo = todo;

  final Map<String, List<Todo>>? _todo;
  @override
  Map<String, List<Todo>>? get todo {
    final value = _todo;
    if (value == null) return null;
    if (_todo is EqualUnmodifiableMapView) return _todo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TodoState.loadedTodoHistory(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedTodoHistoryImpl &&
            const DeepCollectionEquality().equals(other._todo, _todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedTodoHistoryImplCopyWith<_$LoadedTodoHistoryImpl> get copyWith =>
      __$$LoadedTodoHistoryImplCopyWithImpl<_$LoadedTodoHistoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Todo> todo) loadedTodoToday,
    required TResult Function(Map<String, List<Todo>>? todo) loadedTodoHistory,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return loadedTodoHistory(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Todo> todo)? loadedTodoToday,
    TResult? Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return loadedTodoHistory?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todo)? loadedTodoToday,
    TResult Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loadedTodoHistory != null) {
      return loadedTodoHistory(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedTodoToday value) loadedTodoToday,
    required TResult Function(_LoadedTodoHistory value) loadedTodoHistory,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loadedTodoHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult? Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loadedTodoHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedTodoHistory != null) {
      return loadedTodoHistory(this);
    }
    return orElse();
  }
}

abstract class _LoadedTodoHistory implements TodoState {
  const factory _LoadedTodoHistory(final Map<String, List<Todo>>? todo) =
      _$LoadedTodoHistoryImpl;

  Map<String, List<Todo>>? get todo;
  @JsonKey(ignore: true)
  _$$LoadedTodoHistoryImplCopyWith<_$LoadedTodoHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'TodoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Todo> todo) loadedTodoToday,
    required TResult Function(Map<String, List<Todo>>? todo) loadedTodoHistory,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Todo> todo)? loadedTodoToday,
    TResult? Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todo)? loadedTodoToday,
    TResult Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedTodoToday value) loadedTodoToday,
    required TResult Function(_LoadedTodoHistory value) loadedTodoHistory,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult? Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TodoState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'TodoState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Todo> todo) loadedTodoToday,
    required TResult Function(Map<String, List<Todo>>? todo) loadedTodoHistory,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Todo> todo)? loadedTodoToday,
    TResult? Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todo)? loadedTodoToday,
    TResult Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedTodoToday value) loadedTodoToday,
    required TResult Function(_LoadedTodoHistory value) loadedTodoHistory,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult? Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements TodoState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'TodoState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Todo> todo) loadedTodoToday,
    required TResult Function(Map<String, List<Todo>>? todo) loadedTodoHistory,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Todo> todo)? loadedTodoToday,
    TResult? Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todo)? loadedTodoToday,
    TResult Function(Map<String, List<Todo>>? todo)? loadedTodoHistory,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedTodoToday value) loadedTodoToday,
    required TResult Function(_LoadedTodoHistory value) loadedTodoHistory,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult? Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedTodoToday value)? loadedTodoToday,
    TResult Function(_LoadedTodoHistory value)? loadedTodoHistory,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TodoState {
  const factory _Error({required final String error}) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
