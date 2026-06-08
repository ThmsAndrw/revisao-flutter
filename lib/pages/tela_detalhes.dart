import 'package:flutter/material.dart';
import 'package:revisao/pages/tela_animated_container.dart';

class TelaDetalhes extends StatelessWidget {
  const TelaDetalhes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela de Detalhes'),
      ),
      //por padrao o navegator.push nos dar um voltar se estiver no appbar

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.info,
                  size: 80,
                  color: Colors.amber,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Você chegou na segunda tela!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Essa tela foi aberta usando Navigator.push.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const TelaAnimatedContainer();
                      }),
                    ); //voltar para a página anterior
                  },
                  icon: const Icon(Icons.animation),
                  label: const Text('AnimatedContainer'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
