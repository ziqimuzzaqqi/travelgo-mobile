import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _nama;
  String? _metodePembayaran;
  String? _destination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Pemesanan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar Mobil
              Center(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/car.jpg', // Gambar mobil
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Rp 500.000/hari', // Harga mobil
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // Nama
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  _nama = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Tujuan
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Tujuan',
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  _destination = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Tujuan tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Metode Pembayaran
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Metode Pembayaran',
                  border: OutlineInputBorder(),
                ),
                items: ['Cash', 'Transfer Bank', 'E-Wallet']
                    .map((method) => DropdownMenuItem(
                          value: method,
                          child: Text(method),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _metodePembayaran = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Pilih metode pembayaran';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24),

              // Tombol Submit
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Simpan dan tampilkan hasil
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Pemesanan ke $_destination berhasil! Terima kasih $_nama.',
                          ),
                        ),
                      );
                    }
                  },
                  child: Text('Pesan Sekarang'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
