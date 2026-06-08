import 'package:flutter/material.dart';

class TelaAnimatedContainer extends StatefulWidget {
  const TelaAnimatedContainer({super.key});

  @override
  State<TelaAnimatedContainer> createState() => _TelaAnimatedContainerState();
}

class _TelaAnimatedContainerState extends State<TelaAnimatedContainer> {
  bool expandido = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Animated Container'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'AnimatedContainer',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Clique no card para animar tamanho, cor e borda.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        expandido = !expandido;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: expandido ? 300 : 130,
                      height: expandido ? 300 : 130,
                      decoration: BoxDecoration(
                        color: expandido ? Colors.blue : Colors.orange,
                        borderRadius:
                            BorderRadius.circular(expandido ? 30 : 10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              expandido ? Icons.check_circle : Icons.touch_app,
                              color: Colors.white,
                              size: 40,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Clique',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            if(expandido)
                              const Text(
                                'O card aumentou, mudou e cor e arredondou as bordas.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
