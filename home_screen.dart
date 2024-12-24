import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kyriad Muraya Hotel'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/hotel_banner.jpg'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Selamat Datang di Kyriad Muraya Hotel!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Nikmati kenyamanan menginap di hotel berbintang dengan layanan terbaik.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/booking');
                },
                child: Text('Pesan Kamar'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
                child: Text('Hubungi Kami'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
