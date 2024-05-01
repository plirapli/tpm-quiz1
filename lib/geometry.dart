import 'package:flutter/material.dart';
import 'package:quiz_tpm_123210078/cube.dart';
import 'package:quiz_tpm_123210078/trapesium.dart';

class GeometryPage extends StatelessWidget {
  const GeometryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Trapesium dan Kubus",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color.fromARGB(255, 249, 249, 249),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(height: 20),
            const Text("Pilih Menu"),
            const SizedBox(height: 6),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrapeziumPage(),
                  ),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text("Trapesium"),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CubePage(),
                  ),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text("Kubus"),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
