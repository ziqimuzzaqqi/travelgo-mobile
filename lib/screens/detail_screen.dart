import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int carId;

  DetailScreen({required this.carId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Mobil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://via.placeholder.com/400'), // Gambar mobil
            SizedBox(height: 16),
            Text(
              'Mobil $carId',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text('Deskripsi lengkap mobil $carId'),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Harga: Rp 500.000/hari'),
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol sewa diklik
                  },
                  child: Text('Sewa Sekarang'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
