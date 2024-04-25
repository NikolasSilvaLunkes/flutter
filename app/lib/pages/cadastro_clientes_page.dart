
import 'package:app/components/es_container.dart';
import 'package:flutter/material.dart';

class CadastroClientesPage extends StatefulWidget {
  const CadastroClientesPage({super.key, required this.title});

  final String title;

  @override
  State<CadastroClientesPage> createState() => _CadastroClientesPageState();
}

class _CadastroClientesPageState extends State<CadastroClientesPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ESContainer(
        widgets: [
          TextFormField(decoration: const InputDecoration(hintText: 'Nome')),
          TextFormField(decoration: const InputDecoration(hintText: 'Documento')),
          TextFormField(decoration: const InputDecoration(hintText: 'Telefone')),
          TextFormField(decoration: const InputDecoration(hintText: 'Email')),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: () {}, child: const Text('Salvar'))
        ],
      ),
      
    );
  }
}
