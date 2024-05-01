import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  TextEditingController num = TextEditingController();
  String result = "-";
  String number = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Days Counter",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color.fromARGB(255, 249, 249, 249),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(height: 20),
            const Text("Masukkan angka dari 1-7"),
            SizedBox(height: 72),
            _inputField(),
            _calcButton(context),
            _result(),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Widget _inputField() {
    return TextField(
      controller: num,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 32),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^[1-7]')),
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        onPressed: () {
          if (num.text.isNotEmpty) {
            List<String> hari = [
              "Senin",
              "Selasa",
              "Rabu",
              "Kamis",
              "Jumat",
              "Sabtu",
              "Minggu"
            ];

            setState(() {
              result = hari[int.parse(num.text) - 1];
            });
          } else {
            setState(() => result = "😵");
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
            "Result",
            style: TextStyle(fontSize: 18, height: 0.75),
          ),
          Text(
            result,
            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
