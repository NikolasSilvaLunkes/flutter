
import 'package:app/components/es_container.dart';
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
      body: ESContainer(
        widgets: [
            const Text('tipo do serviço'),
            const Text('cliente'),
            TextFormField(decoration: const InputDecoration(hintText: 'Descrição'),),
            TextFormField(decoration: const InputDecoration(hintText: 'Data e Hora'),),
            TextFormField(decoration: const InputDecoration(hintText: 'Valor'),)
           
          ],
        ),
    );
  }
}
