import 'package:flutter/material.dart';
import '../tabs_screen/sport_news.dart';
import './news_tab.dart';

class BeritaController extends StatelessWidget {
  const BeritaController({super.key});

  @override
  Widget build(BuildContext context) {
    List kategori = [
      'Berita Terkini',
      'Olahraga',
    ];

    List Screen = [
      NewsTab(),
      SportNewsTab(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kategori Berita'),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: kategori.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Screen[index];
              }));
            },
            title: Text(kategori[index]),
          );
        },
      ),
    );
  }
}
