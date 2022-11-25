import 'package:flutter/material.dart';

import '../../theme/text.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('About Developers'),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset('assets/pp_dapa.jpg'),
              ),
              radius: 80,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Naufal Daffa Riswanda',
              style: titleText,
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Nim'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(':  21120120130107'),
                      ),
                    ],
                  ),
                ),
                // bagian alamat
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Alamat'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(':  Bumi Mutiara Blok JB9/17'),
                      ),
                    ],
                  ),
                ),
                // bagian emial
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Email'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(':  daffariswanda@students.undip.ac.id'),
                      ),
                    ],
                  ),
                ),
                // nomor hp
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Nomor Telp'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(':  082227788613'),
                      ),
                    ],
                  ),
                ),
                // Waifu
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Waifu'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(':  Megumin'),
                      ),
                    ],
                  ),
                ),
                // nomor Ultah
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Ulang Tahun'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(':  17 Maret'),
                      ),
                    ],
                  ),
                ),
                // nomor hp
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  child: Row(
                    children: const [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Text('Kerjaan'),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: Text(':  Ngerjain Orang'),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
