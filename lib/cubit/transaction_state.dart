part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class TransactionInitial extends TransactionState {
  @override
  List<Object> get props => [];
}
class TransactionLoaded extends TransactionState{
  final List<Transaction> transactions;
  TransactionLoaded(this.transactions);
  @override
  // TODO: implement props
  List<Object> get props => [transactions];
}
class TransactionLoadingFailed extends TransactionState{
  final String message;
  TransactionLoadingFailed(this.message);
  @override
  // TODO: implement props
  List<Object> get props => [message];
}
