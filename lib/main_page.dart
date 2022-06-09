import 'package:flutter/material.dart';
import 'package:proyekakhir_dicoding_mellyvia/landing_page.dart';
import 'package:proyekakhir_dicoding_mellyvia/form.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Happiness Cake"),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Color.fromARGB(255, 250, 236, 214),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 63, 44, 37)),
              child: Text(
                "HAPPINESS\nBAKERY",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 3,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Welcome Page",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 34, 24, 20),
                  letterSpacing: 1,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LandingPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 34, 24, 20),
                  letterSpacing: 1,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MainPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                "Form Pemesanan",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 34, 24, 20),
                  letterSpacing: 1,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MyForm(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 7),
            child: Text(
              "\n Haloo Mellyvia,\n Silahkan Memilih Menu",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Kategori(isActive: true, kategori: "Populer"),
                Kategori(kategori: "Tiramisu"),
                Kategori(kategori: "Brownies"),
                Kategori(kategori: "Red Velvet"),
                Kategori(kategori: "Cheese Cake"),
                Kategori(kategori: "Roll Cake"),
                Kategori(kategori: "Pound Cake"),
              ],
            ),
          ),
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Cake(
                      gambar: "tiramisu.jpg",
                      namakue: "Tiramisu",
                      harga: "Rp20.000",
                    ),
                    Cake(
                        gambar: "matcha.jpg",
                        namakue: "Matcha Cheese Cake",
                        harga: "Rp30.000"),
                    Cake(
                        gambar: "strawberry.jpg",
                        namakue: "Strawberry Roll Cake",
                        harga: "Rp25.000"),
                    Cake(
                        gambar: "redvelvet.jpg",
                        namakue: "Red Velvet Cupcake",
                        harga: "Rp15.000"),
                    Cake(
                        gambar: "lotus.jpg",
                        namakue: "Lotus Brownies",
                        harga: "Rp15.000"),
                    Cake(
                        gambar: "vanilla.jpg",
                        namakue: "Vanilla Pound Cake",
                        harga: "Rp12.000")
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Kategori extends StatelessWidget {
  const Kategori({Key? key, this.isActive = false, required this.kategori})
      : super(key: key);

  final bool isActive;
  final String kategori;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 9, right: 9, bottom: 30),
      width: 125,
      height: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.brown,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 0.3,
          color: Colors.black,
        ),
      ),
      child: Text(
        kategori,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.white,
        ),
      ),
    );
  }
}

class Cake extends StatelessWidget {
  const Cake(
      {Key? key,
      required this.gambar,
      required this.namakue,
      required this.harga})
      : super(key: key);

  final String gambar;
  final String namakue;
  final String harga;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(16),
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(gambar),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namakue,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 7),
                    child: Text(
                      harga,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: MyButton(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 30,
      margin: EdgeInsets.only(right: 30),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => MyForm(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 85, 60, 50),
          onPrimary: Colors.white,
        ),
        child: Text(
          "Pesan",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
