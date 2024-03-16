import 'package:flutter/material.dart';

class PersonnCreatePage extends StatefulWidget {
  const PersonnCreatePage({super.key});

  @override
  State<PersonnCreatePage> createState() => _PersonnCreatePageState();
}

class _PersonnCreatePageState extends State<PersonnCreatePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( title: Text("Formulaire"),


      ),
      body: Container(
        padding: EdgeInsets.all(10
      ),
      child: Form(
        child: ListView(
          children: [
            TextField(decoration : InputDecoration(
                labelText: "Nom"
              )
            )

          ]
        )
      )
    );
  }
}
