import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leitor_codigo_barras/src/shared/custom_colors.dart';

import 'modules/teste_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          scaffoldBackgroundColor: const Color(0xFFE4ECF0)),
      home: const TestePage(),
    );
  }
}
