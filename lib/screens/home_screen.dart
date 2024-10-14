import 'package:flutter/material.dart';
import 'package:travelgo_mobile/screens/detail_screen.dart';
import 'package:travelgo_mobile/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travelgo - Penyewaan Mobil'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Ganti dengan jumlah mobil yang tersedia
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network('https://via.placeholder.com/150'), // Gambar mobil
              title: Text('Mobil ${index + 1}'),
              subtitle: Text('Deskripsi singkat mobil ${index + 1}'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen(carId: index + 1)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
