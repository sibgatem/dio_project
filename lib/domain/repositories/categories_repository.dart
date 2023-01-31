import 'package:dio_project/domain/models/common/operation_category.dart';

abstract class CategoriesRepository {
  Future<List<OperationCategory>> getAll();
}
