import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CubePage extends StatefulWidget {
  const CubePage({super.key});

  @override
  State<CubePage> createState() => _CubePageState();
}

class _CubePageState extends State<CubePage> {
  TextEditingController sisi = TextEditingController();
  String volume = "-";
  String keliling = "-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cube")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color.fromARGB(255, 249, 249, 249),
        child: ListView(scrollDirection: Axis.vertical, children: [
          const SizedBox(height: 20),
          const Text("Masukkan panjang sisi (cm)"),
          const SizedBox(height: 72),
          _inputField(),
          _calcButton(context),
          _result(),
          const SizedBox(height: 20)
        ]),
      ),
    );
  }

  Widget _inputField() {
    return TextField(
      controller: sisi,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 32),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^\d{0,6}(\.[0-9]*)?')),
      ],
    );
  }

  Widget _calcButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 14, bottom: 6),
      child: TextButton(
        onPressed: () {
          String input = sisi.text;
          if (input.isNotEmpty) {
            double s = double.parse(input);
            setState(() {
              keliling = "${12 * s} cm";
              volume = "${s * s * s} cm²";
            });
          } else {
            setState(() {
              keliling = "-";
              volume = "-";
            });
          }
        },
        child: const Text('Hitung'),
      ),
    );
  }

  Widget _result() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Keliling"),
          Text(
            keliling,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text("Volume"),
          Text(
            volume,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
