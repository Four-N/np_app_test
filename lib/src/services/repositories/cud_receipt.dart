import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/models.dart';

class ReceiptFirestoreService {
  final CollectionReference receiptCollection =
      FirebaseFirestore.instance.collection('receipts');

  // Create Receipt
  Future<void> createReceipt(Receipt receipt) async {
    try {
      await receiptCollection.add({
        'restaurantAddress': receipt.restaurantAddress,
        'restaurantPhoneNumber': receipt.restaurantPhoneNumber,
        'dateTime': receipt.dateTime,
        'menu': receipt.menu,
        'price': receipt.price,
        'amount': receipt.amount,
        'subTotal': receipt.subTotal,
        'salesTax': receipt.salesTax,
        'balance': receipt.balance,
      });
    } catch (e) {
      print(e);
    }
  }

  // Update Receipt
  Future<void> updateReceipt(Receipt receipt) async {
    try {
      await receiptCollection.doc(receipt.id).update({
        'restaurantAddress': receipt.restaurantAddress,
        'restaurantPhoneNumber': receipt.restaurantPhoneNumber,
        'dateTime': receipt.dateTime,
        'menu': receipt.menu,
        'price': receipt.price,
        'amount': receipt.amount,
        'subTotal': receipt.subTotal,
        'salesTax': receipt.salesTax,
        'balance': receipt.balance,
      });
    } catch (e) {
      print(e);
    }
  }

  // Delete Receipt
  Future<void> deleteReceipt(String id) async {
    try {
      await receiptCollection.doc(id).delete();
    } catch (e) {
      print(e);
    }
  }
}
