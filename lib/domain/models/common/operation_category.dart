import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio_project/domain/models/common/user.dart';

part 'operation_category.freezed.dart';

part 'operation_category.g.dart';

@freezed
class OperationCategory with _$OperationCategory {
  const factory OperationCategory({
    required int id,
    required String name,
  }) = _Category;

  factory OperationCategory.fromJson(Map<String, dynamic> json) =>
      _$OperationCategoryFromJson(json);
}
