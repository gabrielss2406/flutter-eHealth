
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email='';
  String pass='';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
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
                width: 150,
                height: 150,
                child: Image.asset('assets/images/image.png'),
              ),
              Container(
                width: 20,
                height: 20,
              ),
              TextField(
                onChanged: (text){
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              Container(
                width: 10,
                height: 10,
              ),
              TextField(
                onChanged: (text){
                  pass = text;
                },
                obscureText: true,
                keyboardType:TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
              ),
              Container(
                width: 10,
                height: 10,
              ),
              RaisedButton(
                onPressed:(){
                  if(email == 'Gabriel' && pass == '123'){
                    Navigator.of(context).pushNamed('/home');
                  };
                },
                child: Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
