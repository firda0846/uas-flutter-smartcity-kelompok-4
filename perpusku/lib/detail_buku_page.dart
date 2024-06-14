import 'package:flutter/material.dart';

class DetailBukuPage extends StatelessWidget {
  final String judul;
  final String penulis;
  final String gambar;
  final double rating;
  final int halaman;
  final int stok;

  DetailBukuPage({
    required this.judul,
    required this.penulis,
    required this.gambar,
    required this.rating,
    required this.halaman,
    required this.stok,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(judul),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.network(
                gambar,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                judul,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Text(
                'oleh $penulis',
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.amber),
                SizedBox(width: 5),
                Text(
                  '$rating/5',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 20),
                Text(
                  'Halaman: $halaman',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 20),
                Text(
                  'Stok: $stok',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: stok > 0
                    ? () {
                        // Logika untuk meminjam buku
                        // Misalnya, navigasi ke halaman peminjaman
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PeminjamanPage(judul: judul)),
                        );
                      }
                    : null, // Disable button if stock is 0
                child: Text('Pinjam Buku'),
              ),
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Deskripsi',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Deskripsi buku akan ditampilkan di sini. Deskripsi ini menjelaskan isi dan informasi terkait buku.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Informasi Tambahan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Jumlah halaman, kategori, tahun terbit, dan lain-lain akan ditampilkan di sini.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

// Contoh halaman Peminjaman
class PeminjamanPage extends StatelessWidget {
  final String judul;

  PeminjamanPage({required this.judul});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peminjaman Buku'),
      ),
      body: Center(
        child: Text('Peminjaman untuk buku: $judul'),
      ),
    );
  }
}
