import 'package:bloc/bloc.dart';
import 'package:dio_project/domain/models/common/bank_operation.dart';
import 'package:dio_project/presentation/di/app_module.dart';
import 'package:dio_project/presentation/utils/loading_status.dart';

part 'bank_operations_state.dart';

class BankOperationsCubit extends Cubit<BankOperationsState> {
  BankOperationsCubit() : super(BankOperationsState(status: IdleStatus()));

  Future<void> load() async {
    final repository = AppModule.getTransactionsRepository();
    emit(BankOperationsState(status: LoadingStatus()));
    try {
      final transactions = await repository.getAll();
      emit(BankOperationsState(status: LoadedStatus(transactions)));
    } catch (exception) {
      emit(BankOperationsState(status: FailedStatus(exception.toString())));
    }
  }
}
