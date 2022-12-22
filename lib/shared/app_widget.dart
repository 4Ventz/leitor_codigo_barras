import 'package:flutter/material.dart';
import 'package:leitor_codigo_barras/src/teste_page.dart';

import 'custom_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leitor de codigo de barras',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: CustomColor().mainRed,
        textTheme:
            const TextTheme(bodyText2: TextStyle(color: Color(0xFFFFFFFF))),
      ),
      home: const TestePage(),
    );
  }
}
