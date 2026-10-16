import 'package:flutter/material.dart';

void main() {
  runApp(const AdminApp());
}

class AdminApp extends StatelessWidget {
  const AdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kasba Admin',
      theme: ThemeData(primarySwatch: Colors.deepOrange, useMaterial3: true),
      home: const AdminHomeScreen(),
    );
  }
}

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Card(
                    color: Colors.orange.shade50,
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text('Total Orders', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('24', style: TextStyle(fontSize: 24, color: Colors.deepOrange)),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    color: Colors.green.shade50,
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text('Active Partners', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('6', style: TextStyle(fontSize: 24, color: Colors.green)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Live Orders Stream', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            const Divider(),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.local_shipping, color: Colors.deepOrange),
                    title: Text('Order #1042 - Delivered'),
                    subtitle: Text('Customer: Priyanshu | Partner: Rahul'),
                  ),
                  ListTile(
                    leading: Icon(Icons.pending, color: Colors.amber),
                    title: Text('Order #1043 - On The Way'),
                    subtitle: Text('Customer: Amit | Partner: Suresh'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
