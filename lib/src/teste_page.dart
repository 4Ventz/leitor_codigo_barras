import 'package:flutter/material.dart';
import 'package:leitor_codigo_barras/shared/custom_colors.dart';

class TestePage extends StatefulWidget {
  const TestePage({super.key});

  @override
  State<TestePage> createState() => _TestePageState();
}

class _TestePageState extends State<TestePage> {
  int bottomIndex = 0;
  changeBottomIndex(int index) {
    setState(() {
      bottomIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CustomColor().mainRed,
        title: const Text('Pagina de Testes'),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor().mainRed,
                fixedSize: const Size.fromWidth(288)),
            onPressed: () {
              print("Clicou");
            },
            child: Text(
              "Entrar",
              style: TextStyle(color: CustomColor().offWhite),
            ),
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
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: CustomColor().indicatorBlue,
              labelTextStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 12, color: CustomColor().offWhite))),
          child: NavigationBar(
            onDestinationSelected: (value) => changeBottomIndex(value),
            selectedIndex: bottomIndex,
            height: 80,
            backgroundColor: CustomColor().mainRed,
            destinations: const [
              NavigationDestination(
                  icon: Icon(
                    Icons.receipt_long_outlined,
                    color: Color(0xFFFFFFFF),
                  ),
                  label: 'Devoluções'),
              NavigationDestination(
                  icon: Icon(
                    Icons.qr_code_scanner_outlined,
                    color: Color(0xFFFFFFFF),
                  ),
                  label: 'Novo Scan'),
              NavigationDestination(
                  icon: Icon(
                    Icons.history_outlined,
                    color: Color(0xFFFFFFFF),
                  ),
                  label: 'Historico')
            ],
          )),
    );
  }
}
