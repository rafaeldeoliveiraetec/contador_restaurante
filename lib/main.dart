import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; //precisa importa, para usar os widgets

void main(){
  runApp(MaterialApp(
    title: "Contador",
    home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _pessoa = 0;
  String _info = "Pode Entrar!";

  void _alterarPessoa(int valor){
    setState(() {
      _pessoa+=valor;
    });
    if(_pessoa >= 10){
      _info = "Lotado";
    } if(_pessoa<10) {
      _info = "Pode Entrar!";
    } if (_pessoa<0){
      _pessoa = 0;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg", //cria a pasta images e coloca no pubspec.yaml
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center, //aqui onde a Column vai ficar na tela
          children: <Widget>[
            Text("Pessoas $_pessoa", //primeiro texto
              style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none //para tirar a linha subli
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton( //o botão de +1
                  child: Text("+1",
                    style: TextStyle(color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontSize: 40),),
                  onPressed: (){
                    _alterarPessoa(1);
                  },
                ),
                FlatButton( //o botão de -1
                  child: Text("-1",
                    style: TextStyle(color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontSize: 40),),
                  onPressed: (){
                    _alterarPessoa(-1);
                  },
                ),
              ],
            ),
            Text(
              _info, //segundo texto
              style: TextStyle(color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  decoration: TextDecoration.none
              ),
            ),
          ],
        ),
      ],
    );
  }
}
