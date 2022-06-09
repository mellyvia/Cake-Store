import 'package:flutter/material.dart';
import 'package:proyekakhir_dicoding_mellyvia/main_page.dart';
import 'package:proyekakhir_dicoding_mellyvia/landing_page.dart';

class MyForm extends StatelessWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyek Akhir Mellyvia',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  State<Form> createState() => _FormState();
}

enum Pembayaran { unknown, bayarditempat, transfer }

class _FormState extends State<Form> {
  final nama = TextEditingController();
  final nohp = TextEditingController();
  final alamat = TextEditingController();
  final catatan = TextEditingController();
  Pembayaran pembayaran = Pembayaran.unknown;

  bool tambahan = false;
  String namaCustomer = "",
      nohpCustomer = '',
      alamatCustomer = '',
      catatanCustomer = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nama.dispose();
    nohp.dispose();
    alamat.dispose();
    catatan.dispose();
    super.dispose();
  }

  String getPembayaran(Pembayaran? value) {
    if (value == Pembayaran.bayarditempat) {
      return "Bayar di Tempat";
    } else if (value == Pembayaran.transfer) {
      return "Transfer";
    }
    return "Belum Memilih";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Happiness Cake"),
      ),
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
            margin: EdgeInsets.all(16),
            child: Text(
              "Hi Mellyvia,\nSilahkan Isi Form Pemesanan",
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(12),
                  child: Text(
                    " PEMESANAN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 3),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  maxLines: 1,
                  controller: nama,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(),
                    ),
                    labelText: "Nama",
                    hintText: 'Masukkan Nama Anda',
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  maxLines: 1,
                  controller: nohp,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(),
                      ),
                      hintText: 'Masukkan No. Hp Anda',
                      labelText: "No. Hp"),
                ),
                const SizedBox(height: 20),
                TextField(
                  maxLines: 3,
                  controller: alamat,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(),
                      ),
                      hintText: 'Masukkan Alamat Anda',
                      labelText: "Alamat"),
                ),
                const SizedBox(height: 33),
                Container(
                  child: Text(
                    "Metode Pembayaran",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 66, 44, 36),
                      letterSpacing: 0.7,
                    ),
                  ),
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text("Bayar di Tempat"),
                        leading: Radio(
                          groupValue: pembayaran,
                          value: Pembayaran.bayarditempat,
                          onChanged: (Pembayaran? value) {
                            setState(() {
                              pembayaran = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text("Transfer"),
                        leading: Radio(
                          groupValue: pembayaran,
                          value: Pembayaran.transfer,
                          onChanged: (Pembayaran? value) {
                            setState(() {
                              pembayaran = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ListTile(
                  title: const Text("Tambah Kartu Ucapan?"),
                  leading: Checkbox(
                    value: tambahan,
                    onChanged: (bool? value) {
                      setState(() {
                        tambahan = value!;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  maxLines: 3,
                  controller: catatan,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(),
                      ),
                      hintText: 'Ada Catatan Tambahan?',
                      labelText: "Catatan"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(bottom: 30, left: 120, right: 120),
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  namaCustomer = nama.text;
                  nohpCustomer = nohp.text;
                  alamatCustomer = alamat.text;
                  catatanCustomer = catatan.text;
                });
              },
              child: const Text("Pesan"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DETAIL PEMESANAN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
                const SizedBox(height: 20),
                Text('Nama Customer : $namaCustomer'),
                Text('No. Hp : $nohpCustomer'),
                Text('Alamat : $alamatCustomer'),
                Text('Metode Pembayaran : ${getPembayaran(pembayaran)} '),
                Text(
                    'Tambahan : ${tambahan ? "Tambah Kartu Ucapan" : "Tanpa Kartu Ucapan"}'),
                Text('Catatan : $catatanCustomer'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
