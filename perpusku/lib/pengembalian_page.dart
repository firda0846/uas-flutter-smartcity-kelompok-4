import 'package:flutter/material.dart';

class PengembalianPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Contoh data buku yang dipinjam
    final List<Map<String, String>> borrowedBooks = [
      {'title': 'Book 1', 'author': 'Author 1'},
      {'title': 'Book 2', 'author': 'Author 2'},
      {'title': 'Book 3', 'author': 'Author 3'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Pengembalian Buku'),
      ),
      body: ListView.builder(
        itemCount: borrowedBooks.length,
        itemBuilder: (context, index) {
          final book = borrowedBooks[index];
          return Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(book['title'] ?? 'Unknown Title'),
              subtitle: Text('by ${book['author'] ?? 'Unknown Author'}'),
              trailing: ElevatedButton(
                onPressed: () {
                  // Implementasi logika pengembalian buku di sini
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${book['title']} returned')),
                  );
                },
                child: Text('Kembalikan'),
              ),
            ),
          );
        },
      ),
    );
  }
}