import 'package:flutter/material.dart';
import 'package:travelgo_mobile/screens/login_screen.dart';

class ProfileSettingsScreen extends StatelessWidget {
  // Simulasi status login (false berarti belum login)
  final bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    if (!isLoggedIn) {
      // Jika belum login, arahkan ke halaman login
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Anda belum login.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text('Login Sekarang'),
              ),
            ],
          ),
        ),
      );
    }

    // Jika sudah login, tampilkan pengaturan profil
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informasi Akun',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // Nama
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Nama Lengkap'),
              subtitle: Text('John Doe'),
              trailing: Icon(Icons.edit),
              onTap: () {
                // Navigasi atau aksi untuk edit nama
              },
            ),

            Divider(),

            // Email
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('johndoe@example.com'),
              trailing: Icon(Icons.edit),
              onTap: () {
                // Navigasi atau aksi untuk edit email
              },
            ),

            Divider(),

            // Logout
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Keluar'),
              onTap: () {
                // Aksi logout
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
