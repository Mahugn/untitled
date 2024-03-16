import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String? title;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Savings App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Savings'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title, }) : super(key: key) {
    // TODO: implement MyHomePage
    throw UnimplementedError();
  }

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double totalBalance = 8000.0; // Budget for March 2022

  void addTransaction(double amount) {
    setState(() {
      totalBalance += amount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            // Total Balance
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Total Budget',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$$totalBalance',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),

            // Button to create a Saving Goal (can be extended to budgets)
            ElevatedButton(
              onPressed: () {},
              child: Text('Create Saving Goal'),
            ),

            // Transactions (list to be populated)
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Transactions',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            // List of transactions (replace with actual data fetching logic)
            Expanded(
              child: ListView.builder(
                itemCount: 2, // Placeholder for transaction list
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.arrow_downward),
                    title: Text('Expense'),
                    subtitle: Text('\$100'),
                    trailing: Text('Today'),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add a form to enter transaction amount
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext bc) {
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(labelText: 'Amount'),
                            keyboardType: TextInputType.number,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Add transaction logic here
                              addTransaction(100); // Placeholder for user input
                              Navigator.pop(context);
                            },
                            child: Text('Add Transaction'),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Icon(Icons.add),
            ),
        );
    }
}
