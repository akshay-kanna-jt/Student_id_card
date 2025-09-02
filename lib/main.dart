import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text(
            "STUDENT ID CARD",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Stack(
          children: [
            Opacity(
              opacity: 0.4,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/NMAM-Institute-of-Technology.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: FlipCard(
                direction: FlipDirection.VERTICAL,
                front: const StudentIDFront(),
                back: const StudentIDBack(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentIDFront extends StatelessWidget {
  const StudentIDFront({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 300,
        height: 450,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Image.asset(
                "assets/nitte-nmamit-logo.png",
                height: 100,
                width: 300,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, bottom: 8),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 3, 5, 8),
                  width: 1.5,
                ),
              ),
              child: Image.asset("assets/akshay.png", fit: BoxFit.cover),
            ),
            const Text(
              'J T AKSHAY KANNA',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 14),
            buildField("College", "NMAMIT"),
            buildField("Course", "MCA"),
            buildField("USN", "NNM24MC057"),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Column(
                    children: [
                      Text(
                        "Principal",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Icon(Icons.qr_code, size: 40),
                      Text("NNM24MC057"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 4),
      child: Row(
        children: [
          Text(
            "$label : ",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}

class StudentIDBack extends StatelessWidget {
  const StudentIDBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 300,
        height: 450,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildField("Year of Adm.", "2024-2025"),
            buildField("Date of Birth", "09.11.2003"),
            buildField("Blood Group", "AB+VE"),
            const SizedBox(height: 8),
            const Text(
              "Address:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 3.5),
            const Text(
              "MANGALORE 575001 \n"
              "D.K.\n"
              "KARNATAKA",
              style: TextStyle(fontSize: 14),
            ),
            const Spacer(),
            const Divider(),
            const Text(
              "If found, please return to:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Container(
              width: double.infinity,
              color: Colors.amber,
              padding: const EdgeInsets.all(8),
              child: Center(
                /*child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/nitte-nmamit-logo.png"),
                    ),
                  ),*/
                child: const Text(
                  "NITTE  -  NMAM INSTITUTE OF TECHNOLOGY\n"
                  "\tOff-Campus Centre of Nitte (DU)\n"
                  "\tNitte - 574 110, Karkala Taluk\n"
                  "\tUdupi District, Karnataka, India\n"
                  "\tT : +91 8258 281 263 | 281 264\n"
                  "\tW : nmamit.nitte.edu.in",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    height: 1.4,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            "$label : ",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}
