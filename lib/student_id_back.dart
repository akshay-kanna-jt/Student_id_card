/* import 'package:flutter/material.dart';

class StudentIDBack extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildInfo("Date of Birth", "14 June 2002"),
            buildInfo("Blood Group", "O+"),
            buildInfo("Mobile Number", "+91 9876543210"),
            buildInfo("Address", "ABC Street, XYZ City, India"),
            const Spacer(),
            const Divider(thickness: 1),
            const Text(
              "XYZ Institute of Technology\n123, College Road, ABC Village",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: Colors.black, fontSize: 16),
          children: [
            TextSpan(
              text: "$label: ",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }
} 
import 'package:flutter/material.dart';

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
              "# 13-7-827/3 AYODHYA\n"
              "COMPLEX GHS CROSS ROAD\n"
              "HAMPANKATTE - 575001\n"
              "MANGALORE D.K.\n"
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
              color: Colors.orange[700],
              padding: const EdgeInsets.all(8),
              child: const Text(
                "NITTE  -  NMAM INSTITUTE OF TECHNOLOGY\n"
                "Off-Campus Centre of Nitte (DU)\n"
                "Nitte - 574 110, Karkala Taluk\n"
                "Udupi District, Karnataka, India\n"
                "T : +91 8258 281 263 | 281 264\n"
                "W : nmamit.nitte.edu.in",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  height: 1.4,
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
*/
