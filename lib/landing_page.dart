import 'package:flutter/material.dart';
import 'package:proyekakhir_dicoding_mellyvia/main_page.dart';
import 'package:proyekakhir_dicoding_mellyvia/form.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 240, 235),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 145),
                child: Text(
                  "Hi Mellyvia,",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 33, 21, 17),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Text(
                  "Selamat Datang di",
                  style: TextStyle(
                    color: Color.fromARGB(255, 50, 36, 31),
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 75),
              Container(
                width: w,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("slices.png"),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "HAPPINESS CAKE",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                  color: Color.fromARGB(255, 28, 19, 16),
                ),
              ),
              SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MainPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Color.fromARGB(255, 85, 60, 50),
                ),
                child: Text(
                  "Lihat Menu",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
