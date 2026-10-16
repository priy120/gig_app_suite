import 'package:flutter/material.dart';

void main() {
  runApp(const PartnerApp());
}

class PartnerApp extends StatelessWidget {
  const PartnerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kasba Partner',
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),
      home: const PartnerHomeScreen(),
    );
  }
}

class PartnerHomeScreen extends StatelessWidget {
  const PartnerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gig Partner - Active Duty'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Card(
            child: ListTile(
              title: const Text('Gupta Kirana → Station Road'),
              subtitle: const Text('Parcel Type: Grocery | Distance: 1.5 km'),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {},
                child: const Text('Accept ₹40', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Main Bazaar → Civil Lines'),
              subtitle: const Text('Parcel Type: Documents | Distance: 2.8 km'),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {},
                child: const Text('Accept ₹60', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
