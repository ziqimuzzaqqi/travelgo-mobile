import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final int carId;

  DetailScreen({required this.carId});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
            Image.asset('assets/images/car.jpg'), // Gambar mobil
            SizedBox(height: 16),
            Text(
              'Mobil ${widget.carId}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Deskripsi lengkap mobil ${widget.carId}.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Detail harga sewa
            Text(
              'Harga Sewa:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Rp 500.000/hari'),

            SizedBox(height: 16),

            // Spesifikasi mobil
            Text(
              'Spesifikasi Mobil:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            // Detail tambahan seperti kursi, bahan bakar, dan kapasitas bagasi
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.airline_seat_recline_extra),
                SizedBox(width: 8),
                Text('Jumlah Kursi: 5'),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.local_gas_station),
                SizedBox(width: 8),
                Text('Bahan Bakar: Bensin'),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.workspaces_filled),
                SizedBox(width: 8),
                Text('Kapasitas Bagasi: 350L'),
              ],
            ),

            SizedBox(height: 24),

            // Tombol Sewa Sekarang
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Harga: Rp 500.000/hari',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
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
