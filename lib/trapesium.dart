import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TrapeziumPage extends StatefulWidget {
  const TrapeziumPage({super.key});

  @override
  State<TrapeziumPage> createState() => _TrapeziumPageState();
}

class _TrapeziumPageState extends State<TrapeziumPage> {
  TextEditingController sisiAtas = TextEditingController();
  TextEditingController sisiBawah = TextEditingController();
  TextEditingController sisiMiring = TextEditingController();
  TextEditingController tinggi = TextEditingController();

  String luas = "-";
  String keliling = "-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Trapezium")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color.fromARGB(255, 249, 249, 249),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(height: 20),
            Image.asset("assets/trapesium.png"),
            const SizedBox(height: 20),
            const Text("Masukkan panjang sisi (cm)"),
            _inputField("Sisi atas", sisiAtas),
            _inputField("Sisi bawah", sisiBawah),
            _inputField("Sisi miring", sisiMiring),
            _inputField("Tinggi", tinggi),
            _calcButton(context),
            _result(),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Widget _inputField(String label, TextEditingController input) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: TextField(
        controller: input,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'^\d{0,6}(\.[0-9]*)?')),
        ],
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }

  Widget _calcButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 14, bottom: 6),
      child: TextButton(
        onPressed: () {
          String inputSisiAtas = sisiAtas.text;
          String inputSisiBawah = sisiBawah.text;
          String inputSisiMiring = sisiMiring.text;
          String inputTinggi = tinggi.text;

          if (inputSisiAtas.isNotEmpty &&
              inputSisiBawah.isNotEmpty &&
              inputSisiMiring.isNotEmpty &&
              inputTinggi.isNotEmpty) {
            double atas = double.parse(inputSisiAtas);
            double bawah = double.parse(inputSisiBawah);
            double miring = double.parse(inputSisiMiring);
            double t = double.parse(inputTinggi);

            setState(() {
              keliling = "${atas + bawah + miring + t} cm";
              luas = "${(atas + bawah) / 2 * t} cm²";
            });
          } else {
            setState(() {
              keliling = "-";
              luas = "-";
            });
          }
        },
        child: const Text('Hitung'),
      ),
    );
  }

  Widget _result() {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Keliling"),
          Text(
            keliling,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text("Luas"),
          Text(
            luas,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
