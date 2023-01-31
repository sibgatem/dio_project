// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankOperation _$$_BankOperationFromJson(Map<String, dynamic> json) =>
    _$_BankOperation(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      date: DateTime.parse(json['date'] as String),
      sum: (json['sum'] as num).toDouble(),
      operationCategory: OperationCategory.fromJson(
          json['operationCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BankOperationToJson(_$_BankOperation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'sum': instance.sum,
      'operationCategory': instance.operationCategory,
    };
