import 'package:flutter/material.dart';

class Peminjaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peminjaman'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daftar Buku yang Dipinjam',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Daftar buku yang dipinjam
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Buku ${index + 1}'),
                    subtitle: Text('Tanggal Pengembalian: 01-01-2024'),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika pengembalian buku di sini
              },
              child: Text('Kembalikan Semua Buku'),
            ),
          ],
        ),
      ),
    );
  }
}