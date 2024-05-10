import 'package:flutter/material.dart';

class ESMenu extends StatelessWidget{
  const ESMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/clientes');
          },
          child: const Text('Cadastro de Clientes')
        ),
        const SizedBox(height: 20,),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/tiposservicos');
          },
          child: const Text('Cadastro de Tipos de Serviços')
        ),
        const SizedBox(height: 20,),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/realizarservico');
          },
          child: const Text('Realizar serviço')
        ),
        const SizedBox(height: 20,),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/servicosrealizados');
          },
          child: const Text('Serviços Realizados')
        )
      ],
    );
  }

}