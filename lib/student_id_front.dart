/* import 'package:flutter/material.dart';

class StudentIDFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: 300,
        height: 400,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/akshay.png'),
            ),
            Center(child: const SizedBox(height: 18)),
            buildInfo("Name", "Akshay Kanna"),
            buildInfo("Class", "I MCA 'A'"),
            buildInfo("USN", "NNM24MC057"),
            buildInfo("College", "NMAM Institute of Technology"),
          ],
        ),
      ),
    );
  }

  Widget buildInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$label: ", style: const TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
} 

import 'package:flutter/material.dart';

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
            // Top banner
            Container(
              color: Colors.orange[700],
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Image.asset(
                "assets/nitte-nmamit-logo.png",
                height: 100,
                width: 300,
              ),
            ),

            // Photo slot
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

            // Name
            const Text(
              'J T AKSHAY KANNA',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 14),

            // Fields
            buildField("College", "NMAMIT"),
            buildField("Course", "MCA"),
            buildField("USN", "NNM24MC057"),

            const Spacer(),

            // Signature + Barcode
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

  Widget buildField(String label, String value) {
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
*/
