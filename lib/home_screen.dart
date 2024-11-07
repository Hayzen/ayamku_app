import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listProduk = [
      {
        "title": "Ayam ULU",
        "subtitle": "Ayam Segar ",
        "color": Colors.red,
      },
      {
        "title": "Ayam Tiren",
        "subtitle": "Ayam tidak segar",
        "color": Colors.grey,
      },
    ];

    return Scaffold(
      appBar: AppBar(
          title: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Column(children: [
                    Text('Welcome,', style: TextStyle(fontSize: 10)),
                    Text('Ricky Wiranata', style: TextStyle(fontSize: 10))
                  ]),
                  SizedBox(width: 300),
                  IconButton(onPressed: () {}, icon: Icon(Icons.shop))
                ],
              ))),
      body: ListView.builder(
        itemCount: listProduk.length,
        itemBuilder: (context, index) {
          Map produk = listProduk[index];
          return Card(
            elevation: 4.0,
            child: ListTile(
              leading: Icon(
                Icons.coffee,
                color: produk['color'],
              ),
              title: Text(produk['title']),
              subtitle: Text(produk['subtitle']),
              trailing: FilledButton(
                  onPressed: onPressTambah, child: const Text('Tambah')),
            ),
          );
        },
      ),
    );
  }

  void onPressTambah() {}
}
