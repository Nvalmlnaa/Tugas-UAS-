import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hubungi Kami'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informasi Kontak',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Alamat: Jl. Panglima Nyak Makam, Banda Aceh'),
            Text('Telepon: (0651) 123456'),
            Text('Email: info@kyriadmuraya.com'),
            SizedBox(height: 20),
            Text(
              'Kirim Pesan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Pesan'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Pesan berhasil dikirim!')),
                );
              },
              child: Text('Kirim'),
            ),
          ],
        ),
      ),
    );
  }
}