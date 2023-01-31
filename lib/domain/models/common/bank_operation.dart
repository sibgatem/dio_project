import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio_project/domain/models/common/operation_category.dart';
import 'package:dio_project/domain/models/common/user.dart';

part 'bank_operation.freezed.dart';
part 'bank_operation.g.dart';

@freezed
class BankOperation with _$BankOperation {
  const factory BankOperation({
    required int id,
    required String name,
    required String description,
    required DateTime date,
    required double sum,
    required OperationCategory operationCategory,
  }) = _BankOperation;

  factory BankOperation.fromJson(Map<String, dynamic> json) =>
      _$BankOperationFromJson(json);
}
