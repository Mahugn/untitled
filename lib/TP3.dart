import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transaction Notifications',
      home: TransactionNotifications(),
    );
  }
}

class TransactionNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Notifications'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NotificationItem(
              date: 'Today',
              message: 'Your transaction has been successful.',
            ),
            NotificationItem(
              date: 'Yesterday',
              message: 'Your transaction has been successful.',
            ),
            NotificationItem(
              date: '22 March 2022',
              message: 'Your payment has been successful.',
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String date;
  final String message;

  NotificationItem({required this.date, required this.message});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.notifications),
        title: Text(date),
        subtitle: Text(message),
      ),
    );
  }
}

