
import 'package:app/components/es_container.dart';
import 'package:flutter/material.dart';

class CadastroTiposServicoPage extends StatefulWidget {
  const CadastroTiposServicoPage({super.key, required this.title});

  final String title;

  @override
  State<CadastroTiposServicoPage> createState() => _CadastroTiposServicoPageState();
}

class _CadastroTiposServicoPageState extends State<CadastroTiposServicoPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ESContainer(
        widgets: [
            TextFormField(decoration: const InputDecoration(hintText: 'Descrição'),),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () {}, child: const Text('Salvar'))
          ],
      ),
    );
  }
}
