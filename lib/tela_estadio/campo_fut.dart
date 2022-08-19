import 'package:flutter/material.dart';

class CampoTela extends StatefulWidget {
  const CampoTela({Key? key}) : super(key: key);

  @override
  State<CampoTela> createState() => _CampoTelaState();
}

class _CampoTelaState extends State<CampoTela> {
  int pessoa = 0;

  void incrementPessoa() {
    setState(() {
      pessoa++;
      debugPrint(pessoa.toString());
    });
  }

  void decrementPessoa() {
    setState(() {
      pessoa--;
      debugPrint(pessoa.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Campo Bom Jesus'),
        centerTitle: true,
      ),
      backgroundColor: Colors.green,
      body: Container(
        width: 800,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/Imagem_campo.jpeg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pode Entrar',
              style: TextStyle(fontSize: 52),
            ),
            const SizedBox(
              height: 200,
            ),
            Text(
              pessoa.toString(),
              style: const TextStyle(fontSize: 80),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Aproveite o Show!!!',
              style: TextStyle(fontSize: 36),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: incrementPessoa,
              child: const Icon(
                Icons.add,
              ),
            ),
            ElevatedButton(
              onPressed: decrementPessoa,
              child: const Icon(
                Icons.minimize_sharp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
