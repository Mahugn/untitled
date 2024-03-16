import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Détails du compte'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Nom: Rayan Ahmed',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Solde total: 70,000 USD',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Transactions:',
                style: TextStyle(fontSize: 20),
              ),
              TransactionItem(
                title: 'Restaurant',
                amount: '110 USD',
                date: '19 Mars 2022',
              ),
              TransactionItem(
                title: 'Transport',
                amount: '100 USD',
                date: '----',
              ),
              // Ajouter d'autres transactions si besoin
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final String title;
  final String amount;
  final String date;

  TransactionItem({required this.title, required this.amount, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border
              .all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Titre: $title',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Montant: $amount',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Date: $date',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        );
   }
}

