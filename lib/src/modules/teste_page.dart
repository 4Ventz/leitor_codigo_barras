import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leitor_codigo_barras/src/shared/custom_colors.dart';

class TestePage extends StatelessWidget {
  const TestePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NOVO CHAMADO (3/3)",
          style: GoogleFonts.ibmPlexSans(
            textStyle: TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          width: double.infinity,
          decoration: BoxDecoration(
            color: CustomColor().offWhite,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(25, 0, 0, 0),
                blurRadius: 5,
                spreadRadius: 0.1,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    'Confirmação'),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    'Verifique as informações antes de finalizar a abertura do chamado.'),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              SizedBox(
                height: 12,
              ),
              RichText(
                text: TextSpan(
                  text: 'Data de abertura: ',
                  style: GoogleFonts.ibmPlexSans(
                    textStyle: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '15/Dez/2022',
                      style: GoogleFonts.ibmPlexSans(
                        textStyle: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text('Odometro: 200.000 Km'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Caminhão: GDQ-4D07"),
                  Text('Carreta: ABC-1D23'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Requisitado:",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text('Troca de pneus'),
              SizedBox(
                height: 20,
              ),
              Text(
                "Descrição:",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text('Pneus estão gastos. Alguns deles parecem estar furados.'),
              SizedBox(
                height: 20,
              ),
              Text(
                "Imagens:",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://dana.com.br/wp-content/uploads/2020/05/pneu-novo-pneu-careca.jpg",
                      height: 60,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    width: 80,
                    color: Colors.red,
                  ),
                  Container(
                    height: 60,
                    width: 80,
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor().mainRed,
                    textStyle:
                        const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  onPressed: () {},
                  child: Text('Finalizar Chamado'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
