import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        useMaterial3: true,
        primarySwatch: CustomColor().mainRed,
        textTheme: GoogleFonts.ibmPlexSansTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          foregroundColor: CustomColor().offWhite,
          backgroundColor: CustomColor().mainRed,
        ),
      ),
      home: const TestePage(),
    );
  }
}
