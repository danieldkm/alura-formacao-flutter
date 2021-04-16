import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: ListaTransferencia(),
          appBar: AppBar(
            title: Text('Transferências'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => print('add'),
          ),
        ),
      ),
    );

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ItemTransferencia(
            Transferencia(
              100.0,
              1000,
            ),
          ),
          ItemTransferencia(
            Transferencia(
              100.0,
              1000,
            ),
          ),
          ItemTransferencia(
            Transferencia(
              100.0,
              1000,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  const ItemTransferencia(this._transferencia) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        side: BorderSide(color: Colors.black, width: 2.0),
      ),
      child: ListTile(
        leading: Icon(
          Icons.monetization_on,
        ),
        title: Text('300.00'),
        subtitle: Text('10000'),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
