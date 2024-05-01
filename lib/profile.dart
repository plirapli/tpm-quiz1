import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
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
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(14)),
                image: DecorationImage(
                    image: AssetImage("rapli.png"), fit: BoxFit.fitHeight),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Muhammad Rafli",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 2),
            const Row(
              children: [
                Icon(Icons.numbers, size: 16),
                SizedBox(width: 4),
                Text("123210078"),
              ],
            ),
            const SizedBox(height: 2),
            const Row(
              children: [
                Icon(Icons.class_, size: 16),
                SizedBox(width: 4),
                Text("IF-H"),
              ],
            ),
            const SizedBox(height: 2),
            const Row(
              children: [
                Icon(Icons.smart_toy, size: 16),
                SizedBox(width: 4),
                Text("Bermain Gim & Mendengarkan Musik"),
              ],
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
