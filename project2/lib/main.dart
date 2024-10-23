import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Firmalar';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              appTitle,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            backgroundColor: const Color(0xFF0A3087),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              iconSize: 15,
              color: Colors.white,
            )),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(0),
          child: Container(
            color: Colors.grey[250],
            child: const Column(
              children: [set1(), AramaKismi(), YaziKismi(),Firmalar(firmaAdlari: 'Buraya',),Firmalar(firmaAdlari: 'İstenilen',),Firmalar(firmaAdlari: 'Yazılabilir',),Firmalar(firmaAdlari: 'Classla birlikte',),Firmalar(firmaAdlari: 'Parametre alınır.',)],
            ),
          ),
        ),
      ),
    );
  }
}

class set1 extends StatelessWidget {
  const set1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 20, 14, 10),
      child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF0A3087),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.medical_services,
                      color: Colors.white,
                      size: 28,
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      'sağlık',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}

class AramaKismi extends StatelessWidget {
  const AramaKismi({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 16, 14, 16),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 20,
                offset: const Offset(0, 6),
              )
            ]),
        child: TextField(
          decoration: InputDecoration(
              labelText: 'Firma Ara',
              prefixIcon: const Icon(
                // ikon u baş kısmına yerleştirdim.
                Icons.search,
                color: Color.fromARGB(202, 0, 0, 0),
                size: 38,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                  BorderSide(color: const Color.fromARGB(6, 0, 0, 0)))),
        ),
      ),
    );
  }
}

class YaziKismi extends StatelessWidget {
  const YaziKismi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(30, 12, 12, 12),
        child: Row(children: [
          Flexible(
              child: Text(
                'İstediğiniz firmada indirim yakalama fırsatı...',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[400],
                ),
                softWrap: true,
                overflow: TextOverflow.visible,
              ))
        ]));
  }
}
class Firmalar extends StatelessWidget {
  final String firmaAdlari; // Firma adlarını parametre olarak alıyoruz.

  const Firmalar({super.key, required this.firmaAdlari});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
              flex: 1,
              child: Icon(
                Icons.arrow_right,
                color: Colors.black,
                size: 32.0,
              ),
            ),
            Expanded(
              flex: 7,
              child: Text(
                firmaAdlari, // Firma adı burada dinamik olarak parametrelerden alınıyor.
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(7.0),
                decoration: const BoxDecoration(
                  color: Color(0xFF0A3087),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                child: const Text(
                  '%10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}