
import 'package:flutter/material.dart';

class CadastroTiposServicoPage extends StatefulWidget {
  const CadastroTiposServicoPage({super.key, required this.title});

  final String title;

  @override
  State<CadastroTiposServicoPage> createState() => _CadastroTiposServicoPageState();
}

class _CadastroTiposServicoPageState extends State<CadastroTiposServicoPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
            TextFormField(decoration: InputDecoration(hintText: 'Descrição'),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {}, child: Text('Salvar'))
           
          ],
        ),
      ),
    );
  }
}
