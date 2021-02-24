import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; //precisa importa, para usar os widgets

void main(){
  runApp(MaterialApp(
    title: "Contador",
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center, //aqui onde a Column vai ficar na tela
      children: <Widget>[
      Text("Pessoas 0", //primeiro texto
        style: TextStyle(color: Colors.deepOrange,
            fontWeight: FontWeight.bold),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton( //o botão de +1
            child: Text("+1",
              style: TextStyle(color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontSize: 40),),
            onPressed: (){},
          ),
          TextButton( //o botão de -1
            child: Text("-1",
              style: TextStyle(color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontSize: 40),),
            onPressed: (){},
          ),
        ],
      ),
      Text("Pode Entrar !", //segundo texto
        style: TextStyle(color: Colors.deepOrange,
            fontStyle: FontStyle.italic,
        fontSize: 30),
      ),
      ],
    ),
  ));
}