import 'package:flutter/material.dart';
import 'peminjaman.dart';
import 'pengembalian_page.dart';
import 'package:perpusku/edit_profile_page.dart'; // Import EditProfilePage

class LainnyaPage extends StatefulWidget {
  @override
  _LainnyaPageState createState() => _LainnyaPageState();
}

class _LainnyaPageState extends State<LainnyaPage> {
  String _selectedLanguage = 'English'; // Default language
  bool _isDarkMode = false;

  void _changeLanguage(String? language) {
    setState(() {
      _selectedLanguage = language ?? 'English';
    });
    // Here, you can add code to change the app's language
  }

  void _logout(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Keluar'),
          content: Text('Apakah Anda yakin ingin keluar?'),
          actions: <Widget>[
            TextButton(
              child: Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Ya'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.of(context).pushReplacementNamed('/login'); // Perform logout
              },
            ),
          ],
        );
      },
    );
  }

  void _editProfile(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditProfilePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.library_books),
          title: Text('Peminjaman'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Peminjaman()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text('Pengembalian'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PengembalianPage()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Edit Profil'),
          onTap: () => _editProfile(context),
        ),
        ListTile(
          leading: Icon(Icons.language),
          title: Text('Bahasa'),
          trailing: DropdownButton<String>(
            value: _selectedLanguage,
            onChanged: _changeLanguage,
            items: <String>['English', 'Bahasa Indonesia']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Keluar'),
          onTap: () => _logout(context),
        ),
      ],
    );
  }
}