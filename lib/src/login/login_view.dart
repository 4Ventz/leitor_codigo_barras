import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<String> codes = [];

  readCode() async {
    // Stream<dynamic>? reader = FlutterBarcodeScanner.getBarcodeStreamReceiver(
    //     "#FFFFFF", "Cancelar", false, ScanMode.BARCODE);
    String code = await FlutterBarcodeScanner.scanBarcode(
        "#FFFFFF", "Cancelar", false, ScanMode.BARCODE);

    // if (reader != null) {
    //   reader.listen((code) {
    //     if (!codes.contains(code.toString()) && code != "-1") {
    //       setState(() => codes.add(code.toString()));
    //     }
    //   });
    // }

    if (!codes.contains(code.toString()) && code != "-1") {
      setState(() {
        setState(() => codes.add(code.toString()));
      });
    }
  }

  resetList() {
    setState(() {
      codes.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Lista"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: resetList,
                icon: const Icon(Icons.restart_alt_rounded)),
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 34, 34, 34),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                reverse: true,
                itemCount: codes.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: const Icon(Icons.qr_code_rounded,
                          color: Colors.white),
                      trailing: Text(
                        "#${index.toString()}",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      title: Text(
                        codes[index],
                        style: const TextStyle(color: Colors.white),
                      ));
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: FloatingActionButton.extended(
                label: const Text('Scanear'), // <-- Text
                backgroundColor: Colors.red,
                icon: const Icon(
                  // <-- Icon
                  Icons.qr_code_scanner_rounded,
                  size: 24.0,
                ),
                onPressed: readCode,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
