import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CubePage extends StatefulWidget {
  const CubePage({super.key});

  @override
  State<CubePage> createState() => _CubePageState();
}

class _CubePageState extends State<CubePage> {
  TextEditingController num = TextEditingController();
  String volume = "-";
  String keliling = "-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kubus",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
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
      controller: num,
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
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: () {
          String input = num.text;
          if (input.isNotEmpty) {
            double s = double.parse(input);
            setState(() {
              volume = (s * s * s).toString();
              keliling = (12 * s).toString();
            });
          } else {
            setState(() {
              volume = "-";
              keliling = "-";
            });
          }
        },
        child: const Text('Check'),
      ),
    );
  }

  Widget _result() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Volume",
            style: TextStyle(fontSize: 16, height: 0.75),
          ),
          Text(
            volume,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "Keliling",
            style: TextStyle(fontSize: 16, height: 0.75),
          ),
          Text(
            keliling,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
