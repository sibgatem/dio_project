import 'package:dio_project/domain/models/common/bank_operation.dart';

abstract class BankOperationsRepository {
  Future<List<BankOperation>> getAll();
}
