
import 'package:app/components/es_container.dart';
import 'package:app/infra/repository/clientes_repository.dart';
import 'package:flutter/material.dart';

class CadastroClientesPage extends StatefulWidget {
  const CadastroClientesPage({super.key, required this.title});

  final String title;

  @override
  State<CadastroClientesPage> createState() => _CadastroClientesPageState();
}

class _CadastroClientesPageState extends State<CadastroClientesPage> {

  TextEditingController nomeController = TextEditingController();
  TextEditingController documentoController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  void salvar(BuildContext context) async {
    final clienteRepository =  ClienteRepository();
    await clienteRepository.salvar(
      nomeController.text,
      documentoController.text,
      telefoneController.text,
      emailController.text
    );

    Navigator.of(context).pushNamed('/clientes');
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ESContainer(
        widgets: [
          TextFormField(
            controller: nomeController,
            decoration: const InputDecoration(hintText: 'Nome')),
          TextFormField(
            controller: documentoController,
            decoration: const InputDecoration(hintText: 'Documento')),
          TextFormField(decoration: const InputDecoration(hintText: 'Telefone')),
          TextFormField(decoration: const InputDecoration(hintText: 'Email')),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: () { salvar(context);}, child: const Text('Salvar'))
        ],
      ),
      
    );
  }
}
