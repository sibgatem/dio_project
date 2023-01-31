part of 'bank_operations_cubit.dart';

class BankOperationsState {
  final ApiStatus<List<BankOperation>> status;

  BankOperationsState({required this.status});
}
