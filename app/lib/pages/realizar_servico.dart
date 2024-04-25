
import 'package:flutter/material.dart';

class RealizarServicoPage extends StatefulWidget {
  const RealizarServicoPage({super.key, required this.title});

  final String title;

  @override
  State<RealizarServicoPage> createState() => _RealizarServicoPageState();
}

class _RealizarServicoPageState extends State<RealizarServicoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('tipo do serviço'),
            Text('cliente'),
            TextFormField(decoration: InputDecoration(hintText: 'Descrição'),),
            TextFormField(decoration: InputDecoration(hintText: 'Data e Hora'),),
            TextFormField(decoration: InputDecoration(hintText: 'Valor'),)
           
          ],
        ),
      ),
    );
  }
}
