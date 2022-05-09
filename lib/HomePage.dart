import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
} // Stateful 

class HomePageState extends State<HomePage> {

  final myControllerName = TextEditingController(); // Altura
  final myControllerName2 = TextEditingController();// Peso

  void OpenResult(){
    Navigator.pushReplacementNamed(context, '/resultado',
      arguments:{
        'peso': myControllerName2.value.text,
        'altura': myControllerName.value.text,
      } 
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tela Principal',
          style: TextStyle(fontSize: 25)
        ),
      ),

      body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 20,
                height: 20,
              ),
              TextField(
                controller: myControllerName,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Altura (cm):',
                  border: OutlineInputBorder(),
                ),
              ),
              Container(
                width: 10,
                height: 10,
              ),
              TextField(
                controller: myControllerName2,
                keyboardType:TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Peso (kg):',
                  border: OutlineInputBorder(),
                ),
              ),
              Container(
                width: 10,
                height: 10,
              ),
              RaisedButton(
                onPressed:(){
                  OpenResult();
                },
                child: Text('Calcular'),
              ),
            ],
          ),
        ),
      ),
      ),

    );

  } // Build

} // State<Stateful>