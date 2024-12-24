import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/booking_screen.dart';
import 'screens/contact_screen.dart';

void main() {
  runApp(KyriadMurayaApp());
}

class KyriadMurayaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kyriad Muraya Hotel',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/booking': (context) => BookingScreen(),
        '/contact': (context) => ContactScreen(),
      },
    );
  }
}
