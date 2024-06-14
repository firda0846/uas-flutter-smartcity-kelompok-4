import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifikasi'),
      ),
      body: Center(
        child: Text(
          'Ini adalah halaman notifikasi',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}