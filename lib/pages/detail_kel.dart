import 'package:flutter/material.dart';

class DetailKelompokPage extends StatelessWidget {
  DetailKelompokPage({
    required this.name,
    required this.nim,
    required this.desc,
    required this.urlImage,
  });

  String name;
  String nim;
  String desc;
  String urlImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Details People'),
        elevation: 0.0,
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Image.asset(urlImage),
                const SizedBox(height: 20),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  nim,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  desc,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
