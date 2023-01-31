import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio_project/domain/models/common/bank_operation.dart';
import 'package:dio_project/presentation/cubit/bank_operations/bank_operations_cubit.dart';
import 'package:dio_project/presentation/utils/loading_status.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BankOperationsCubit()..load(),
      child: BlocBuilder<BankOperationsCubit, BankOperationsState>(
        builder: (context, state) {
          switch (state.status.runtimeType) {
            case LoadedStatus<List<BankOperation>>:
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.status.item!.length,
                itemBuilder: (context, index) {
                  final item = state.status.item![index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Транзакция №${item.id}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          item.description,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "${item.sum} руб.",
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "Категория '${item.operationCategory.name}'",
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Назад'),
                        ),
                      ],
                    ),
                  );
                },
              );
            case FailedStatus<List<BankOperation>>:
              return Center(
                child: Text(
                  state.status.message ?? "Неизвестная ошибка",
                ),
              );
            default:
              return const Center(
                child: CircularProgressIndicator(),
              );
          }
        },
      ),
    );
  }
}
