import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Resultado extends StatefulWidget {
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    Map data = ModalRoute.of(context)?.settings.arguments as Map;
    String altura1 = data['altura'];
    String peso1 = data['peso'];
    String resultado = '';

    String abacate(String resultado){
      double imc=0;
      String result = '';
      int peso2 = int.parse(peso1);
      int altura2 = int.parse(altura1);

      imc = (peso2 / (altura2 * altura2)) * 10000;
      setState(() {
        if (imc < 18.6)
        result += "Abaixo do peso";
        else if (imc < 25.0)
        result += "Peso ideal";
        else if (imc < 30.0)
        result += "Levemente acima do peso";
        else if (imc < 35.0)
        result += "Obesidade Grau I";
        else if (imc < 40.0)
        result += "Obesidade Grau II";
        else
        result += "Obesidade Grau III";      
      });
      return result;
    };

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
        child: Text(
          abacate(resultado),
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
          )
        ),
      ),
      ),
    );
  }
}