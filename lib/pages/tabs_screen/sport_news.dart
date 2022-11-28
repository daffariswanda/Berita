import 'package:flutter/material.dart';
import 'dart:convert';

//menggunakan package http untuk mengambil data
import 'package:http/http.dart' as http;

// import halaman detial
import '../detail_news.dart';

class SportNewsTab extends StatelessWidget {
  const SportNewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sport News'),
        elevation: 0.0,
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _fetchNews(),
        builder: (context, snapshot) {
          // pengkonsian jika data berhasil di ambil
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length - 1,
              itemBuilder: (context, posisi) {
                int index = posisi + 1;
                return InkWell(
                  onTap: () {
                    if (snapshot.data![index]['content'] == null) {
                      showDialog(
                          context: context,
                          builder: (ctx) {
                            return const AlertDialog(
                              content: Text('Content Belum tersedia saat ini'),
                            );
                          });
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailNews(
                              title: snapshot.data![index]['title'],
                              imageUrl: snapshot.data![index]['urlToImage'],
                              content: snapshot.data![index]['content'],
                            );
                          },
                        ),
                      );
                    }
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        index.toString(),
                      ),
                    ),
                    title: Text(
                      snapshot.data![index]['title'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      snapshot.data![index]['publishedAt'],
                    ),
                  ),
                );
              },
            );
          } else {
            // ketika data gagal di ambil /  sedang diambil
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

// fungsi mengambil data dari APi
Future<List<dynamic>> _fetchNews() async {
  var result = await http.get(Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=id&category=sports&apiKey=d2c05541c3be436184fe4573b7d70221'));
  var response = json.decode(result.body)['articles'];
  return response;
}
