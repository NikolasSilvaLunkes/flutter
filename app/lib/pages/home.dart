import 'package:app/components/menu.dart';
import 'package:app/components/menuItem.dart';
import 'package:app/pages/cadastro_clientes_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Menu(items: [
          MenuItem(label: 'Cadastro de Clientes', route: '/clientes'),
          MenuItem(
              label: 'Cadastro de Tipos de Serviços', route: '/tiposservicos'),
          MenuItem(label: 'Realizar serviço', route: '/realizarservico'),
          MenuItem(label: 'Serviços Realizados', route: '/servicosrealizados')
        ]));
  }
}
