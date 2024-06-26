import 'package:flutter/material.dart';
import 'package:quiz_tpm_123210078/cube.dart';
import 'package:quiz_tpm_123210078/trapesium.dart';

class GeometryPage extends StatelessWidget {
  const GeometryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        const SizedBox(height: 20),
        const Text("Choose Menu"),
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
          child: const Text("Trapezium"),
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
          child: const Text("Cube"),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
