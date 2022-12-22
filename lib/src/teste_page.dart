import 'package:flutter/material.dart';
import 'package:leitor_codigo_barras/shared/custom_colors.dart';

class TestePage extends StatelessWidget {
  const TestePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pagina de Testes'),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              print("Clicou");
            },
            child: const Text("Botão"),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {
              print("Clicou");
            },
            child: const Text("Botão"),
          ),
        ]),
      ),
      bottomNavigationBar: NavigationBar(
          height: 80,
          backgroundColor: CustomColor().mainRed,
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.receipt_long_outlined), label: 'Devoluções'),
            NavigationDestination(
                icon: Icon(Icons.qr_code_scanner_outlined), label: 'Novo Scan'),
            NavigationDestination(
                icon: Icon(Icons.history_outlined), label: 'Historico')
          ]),
    );
  }
}
