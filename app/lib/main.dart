import 'package:app/pages/cadastro_clientes_page.dart';
import 'package:app/pages/cadastro_tipos_servico.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/lista_clientes_page.dart';
import 'package:app/pages/lista_tipos_servico_page.dart';
import 'package:app/pages/realizar_servico.dart';
import 'package:app/pages/servicos_realizados.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serviços',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routes: {
        '/':(context) => const MyHomePage(title: 'Home'),
        '/clientes':(context) => const ListaClientesPage(title: 'Cadastro de Clientes'),
        '/clientescadastro':(context) => const CadastroClientesPage(title: 'Cadastro de Clientes'),
        '/tiposservicos':(context) => const ListaTiposServicoPage(title: 'Cadastro de Tipos de Serviço'),
        '/tiposservicoscadastro':(context) => const CadastroTiposServicoPage(title: 'Cadastro de Tipos de Serviço'),
        '/realizarservico':(context) => const RealizarServicoPage(title: 'Realizar Serviço'),
        '/servicosrealizados':(context) => const ServicosRealizadosPage(title:  'Serviços Realizados')
      },
    );
  }
}
