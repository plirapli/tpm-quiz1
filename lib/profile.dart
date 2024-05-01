import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color.fromARGB(255, 249, 249, 249),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(height: 20),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(14)),
                image: DecorationImage(
                  image: AssetImage("rapli.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Muhammad Rafli",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            biodata("123210078", Icons.numbers),
            biodata("IF-H", Icons.class_),
            biodata("Bermain Gim & Mendengarkan Musik", Icons.smart_toy),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Widget biodata(String title, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      child: Row(
        children: [
          Icon(icon, size: 16),
          const SizedBox(width: 4),
          Text(title),
        ],
      ),
    );
  }
}
