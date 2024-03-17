import 'package:equatable/equatable.dart';

class Receipt extends Equatable {
  final String id;
  final String restaurantAddress;
  final String restaurantPhoneNumber;
  final DateTime? dateTime;
  final String menu;
  final double price;
  final int amount;
  final double subTotal;
  final double salesTax;
  final double balance;

  const Receipt({
    this.id = '',
    this.restaurantAddress = '',
    this.restaurantPhoneNumber = '',
    this.dateTime,
    this.menu = '',
    this.price = 0.0,
    this.amount = 0,
    this.subTotal = 0.0,
    this.salesTax = 0.0,
    this.balance = 0.0,
  });

  static const empty = Receipt();

  @override
  List<Object?> get props => [
        id,
        restaurantAddress,
        restaurantPhoneNumber,
        dateTime,
        menu,
        price,
        amount,
        subTotal,
        salesTax,
        balance
      ];

  Receipt copyWith({
    String? id,
    String? restaurantAddress,
    String? restaurantPhoneNumber,
    DateTime? dateTime,
    String? menu,
    double? price,
    int? amount,
    double? subTotal,
    double? salesTax,
    double? balance,
  }) {
    return Receipt(
      id: id ?? this.id,
      restaurantAddress: restaurantAddress ?? this.restaurantAddress,
      restaurantPhoneNumber:
          restaurantPhoneNumber ?? this.restaurantPhoneNumber,
      dateTime: dateTime ?? this.dateTime,
      menu: menu ?? this.menu,
      price: price ?? this.price,
      amount: amount ?? this.amount,
      subTotal: subTotal ?? this.subTotal,
      salesTax: salesTax ?? this.salesTax,
      balance: balance ?? this.balance,
    );
  }
}
