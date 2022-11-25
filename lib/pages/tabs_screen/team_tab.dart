import 'package:flutter/material.dart';
import 'dart:convert';

// menambah fungsi rootbundle
import 'package:flutter/services.dart';

// package untuk http request
import 'package:http/http.dart' as http;

// import halaman detail mahasiswa
import '../detail_kel.dart';

class Team_Tab extends StatefulWidget {
  const Team_Tab({super.key});

  @override
  State<Team_Tab> createState() => _Team_TabState();
}

class _Team_TabState extends State<Team_Tab> {
  // unutk menampung data json

  List _items = [];

  // mengambil data dari json assets
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = json.decode(response);
    setState(() {
      _items = data['mahasiswa'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Team'),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: readJson,
              child: const Text('Load Data'),
            ),
            _items.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return Card(
                          key: ValueKey(_items[index]["id"]),
                          margin: const EdgeInsets.all(10),
                          color: Colors.amber.shade100,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailKelompokPage(
                                  name: _items[index]["name"],
                                  desc: _items[index]["desc"],
                                  nim: _items[index]["nim"],
                                  urlImage: _items[index]["image"],
                                );
                              }));
                            },
                            child: ListTile(
                              leading: Text(_items[index]["id"]),
                              title: Text(_items[index]["name"]),
                              subtitle: Text(_items[index]["nim"]),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
