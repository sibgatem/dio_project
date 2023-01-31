// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_operation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankOperation _$BankOperationFromJson(Map<String, dynamic> json) {
  return _BankOperation.fromJson(json);
}

/// @nodoc
mixin _$BankOperation {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;
  OperationCategory get operationCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankOperationCopyWith<BankOperation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankOperationCopyWith<$Res> {
  factory $BankOperationCopyWith(
          BankOperation value, $Res Function(BankOperation) then) =
      _$BankOperationCopyWithImpl<$Res, BankOperation>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      DateTime date,
      double sum,
      OperationCategory operationCategory});

  $OperationCategoryCopyWith<$Res> get operationCategory;
}

/// @nodoc
class _$BankOperationCopyWithImpl<$Res, $Val extends BankOperation>
    implements $BankOperationCopyWith<$Res> {
  _$BankOperationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? date = null,
    Object? sum = null,
    Object? operationCategory = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      operationCategory: null == operationCategory
          ? _value.operationCategory
          : operationCategory // ignore: cast_nullable_to_non_nullable
              as OperationCategory,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OperationCategoryCopyWith<$Res> get operationCategory {
    return $OperationCategoryCopyWith<$Res>(_value.operationCategory, (value) {
      return _then(_value.copyWith(operationCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BankOperationCopyWith<$Res>
    implements $BankOperationCopyWith<$Res> {
  factory _$$_BankOperationCopyWith(
          _$_BankOperation value, $Res Function(_$_BankOperation) then) =
      __$$_BankOperationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      DateTime date,
      double sum,
      OperationCategory operationCategory});

  @override
  $OperationCategoryCopyWith<$Res> get operationCategory;
}

/// @nodoc
class __$$_BankOperationCopyWithImpl<$Res>
    extends _$BankOperationCopyWithImpl<$Res, _$_BankOperation>
    implements _$$_BankOperationCopyWith<$Res> {
  __$$_BankOperationCopyWithImpl(
      _$_BankOperation _value, $Res Function(_$_BankOperation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? date = null,
    Object? sum = null,
    Object? operationCategory = null,
  }) {
    return _then(_$_BankOperation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      operationCategory: null == operationCategory
          ? _value.operationCategory
          : operationCategory // ignore: cast_nullable_to_non_nullable
              as OperationCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankOperation implements _BankOperation {
  const _$_BankOperation(
      {required this.id,
      required this.name,
      required this.description,
      required this.date,
      required this.sum,
      required this.operationCategory});

  factory _$_BankOperation.fromJson(Map<String, dynamic> json) =>
      _$$_BankOperationFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final DateTime date;
  @override
  final double sum;
  @override
  final OperationCategory operationCategory;

  @override
  String toString() {
    return 'BankOperation(id: $id, name: $name, description: $description, date: $date, sum: $sum, operationCategory: $operationCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankOperation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.operationCategory, operationCategory) ||
                other.operationCategory == operationCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, date, sum, operationCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BankOperationCopyWith<_$_BankOperation> get copyWith =>
      __$$_BankOperationCopyWithImpl<_$_BankOperation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankOperationToJson(
      this,
    );
  }
}

abstract class _BankOperation implements BankOperation {
  const factory _BankOperation(
      {required final int id,
      required final String name,
      required final String description,
      required final DateTime date,
      required final double sum,
      required final OperationCategory operationCategory}) = _$_BankOperation;

  factory _BankOperation.fromJson(Map<String, dynamic> json) =
      _$_BankOperation.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  DateTime get date;
  @override
  double get sum;
  @override
  OperationCategory get operationCategory;
  @override
  @JsonKey(ignore: true)
  _$$_BankOperationCopyWith<_$_BankOperation> get copyWith =>
      throw _privateConstructorUsedError;
}
