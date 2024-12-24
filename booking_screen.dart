import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pemesanan Kamar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pilih Kamar',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              isExpanded: true,
              items: [
                DropdownMenuItem(value: 'standar', child: Text('Standar')),
                DropdownMenuItem(value: 'deluxe', child: Text('Deluxe')),
                DropdownMenuItem(value: 'suite', child: Text('Suite')),
              ],
              onChanged: (value) {},
              hint: Text('Pilih tipe kamar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Kamar berhasil dipesan!')),
                );
              },
              child: Text('Konfirmasi Pemesanan'),
            ),
          ],
        ),
      ),
    );
  }
}
