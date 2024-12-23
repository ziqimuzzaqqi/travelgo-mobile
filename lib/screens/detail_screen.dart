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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gambar Mobil
                  Container(
                    width: double.infinity,
                    height: constraints.maxWidth * 0.5, // 50% dari lebar layar
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage('assets/images/car.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Judul Mobil
                  Text(
                    'Mobil ${widget.carId}',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),

                  // Deskripsi Mobil
                  Text(
                    'Deskripsi lengkap mobil ${widget.carId}.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),

                  // Harga Sewa
                  Text(
                    'Harga Sewa:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Rp 500.000/hari'),
                  SizedBox(height: 16),

                  // Spesifikasi Mobil
                  Text(
                    'Spesifikasi Mobil:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.airline_seat_recline_extra),
                      SizedBox(width: 8),
                      Flexible(
                        child: Text('Jumlah Kursi: 5'),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.local_gas_station),
                      SizedBox(width: 8),
                      Flexible(
                        child: Text('Bahan Bakar: Bensin'),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.workspaces_filled),
                      SizedBox(width: 8),
                      Flexible(
                        child: Text('Kapasitas Bagasi: 350L'),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),

                  // Tombol Sewa Sekarang
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Harga: Rp 500.000/hari',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/order');
                        },
                        child: Text('Sewa Sekarang'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
