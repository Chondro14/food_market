import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_market/models/models.dart';
import 'package:food_market/service/service.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());
  Future<void> getTransactions()async{
    ApiReturnValue<List<Transaction>> result=await TransactionService.getTransactions();
    if(result.value!=null){
      emit(TransactionLoaded(result.value));
    }
    else{
      emit(TransactionLoadingFailed(result.message));
    }
  }
  Future<bool> submitTransaction(Transaction transaction)async{
    ApiReturnValue<Transaction> result=await TransactionService.submitTransaction(transaction);
    if(result.value!=null){
      emit(TransactionLoaded((state as TransactionLoaded).transactions+[result.value]));
      return true;
    }
    else{
      emit(TransactionLoadingFailed(result.message));
      return false;
    }
  }
}
