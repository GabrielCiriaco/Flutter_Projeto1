// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/models/trasacoes.dart'; 
void main() => runApp(AppFinanceiro());

class AppFinanceiro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {

  final _transactions = [
    Transaction(id: 't1', title:'novo tenis de corrida', value: 310.76, date: DateTime.now()),
    Transaction(id: 't2', title:'nova calça', value: 60.00, date: DateTime.now()),
    Transaction(id: 't3', title:'nova camiseta', value: 49.99, date: DateTime.now()),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Despesas Pessoais"),
      ),
      
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          Container(
            child: Card(
              color: Colors.amber,
              child: Text("Versão inicial")),
          ), 

          
          Column(
            children:[ ..._transactions.map((tr){
              return Card(
                child:
                  Row(children: [
                    Container(
                      
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15
                      ),

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 2
                        )
                      ),

                      padding: EdgeInsets.all(10),

                      child: Text(
                        tr.value.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.green
                        ),
                      ),
                    ),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tr.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      
                      Text(
                        tr.date.toString(),
                        style: TextStyle(
                          color: Colors.black38
                        ),
                      )
                    ],
                  )
                  ]),
              );
            }).toList(),
            ]
          )
          

        ]
      )
    );
  }
}
