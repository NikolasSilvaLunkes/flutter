
import 'package:app/components/es_container.dart';
import 'package:flutter/material.dart';

class ServicosRealizadosPage extends StatefulWidget {
  const ServicosRealizadosPage({super.key, required this.title});

  final String title;

  @override
  State<ServicosRealizadosPage> createState() => _ServicosRealizadosPageState();
}

class _ServicosRealizadosPageState extends State<ServicosRealizadosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const ESContainer(
        widgets: [
           
          ],
      ),
    );
  }
}
