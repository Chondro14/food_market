part of 'models.dart';

enum TransactionStatus { delivered, pending, on_delivery, canceled }

class Transaction extends Equatable {
  final int id;
  final Food food;
  final int quantity;
  final int total;
  final DateTime dateTime;
  final TransactionStatus transactionStatus;
  final User user;
  Transaction(
      {this.id,
      this.dateTime,
      this.food,
      this.quantity,
      this.total,
      this.transactionStatus,
      this.user});
  Transaction copyWith(
      {int id,
      Food food,
      int quantity,
      int total,
      DateTime dateTime,
      TransactionStatus status,
      User user}) {
    return Transaction(
        id: id ?? this.id,
        food: food ?? this.food,
        quantity: quantity ?? this.quantity,
        total: total ?? this.total,
        dateTime: dateTime ?? this.dateTime,
        transactionStatus: status ?? this.transactionStatus,
        user: user ?? this.user);
  }

  @override
  // TODO: implement props
  List<Object> get props =>
      [id, food, quantity, total, dateTime, transactionStatus, user];
}

List<Transaction> transactionList = [
  Transaction(
      id: 1,
      food: foodList[1],
      quantity: 10,
      total: (foodList[1].price * 10 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      transactionStatus: TransactionStatus.on_delivery,
      user: mockUser),
  Transaction(
      id: 2,
      food: foodList[2],
      quantity: 7,
      total: (foodList[2].price * 7 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      transactionStatus: TransactionStatus.delivered,
      user: mockUser),
  Transaction(
      id: 3,
      food: foodList[3],
      quantity: 5,
      total: (foodList[3].price * 5 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      transactionStatus: TransactionStatus.canceled,
      user: mockUser)
];
