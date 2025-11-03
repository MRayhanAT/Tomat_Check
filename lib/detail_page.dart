import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Map<String, dynamic>? product;

  const DetailPage({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    final name = product?['name'] ?? 'Produk';
    final price = product?['price'] ?? '-';

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.blue.shade400,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(child: Icon(Icons.phone_android, size: 80, color: Colors.blue)),
            ),
            const SizedBox(height: 16),
            Text(name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('Harga: $price', style: const TextStyle(fontSize: 16, color: Colors.black54)),
            const SizedBox(height: 20),
            const Text(
              'Deskripsi singkat produk. Smartphone original bergaransi, kualitas terjamin.',
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Produk ditambahkan ke keranjang (dummy)')));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text('Tambah ke Keranjang'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
