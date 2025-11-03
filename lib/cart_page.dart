import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // dummy empty cart view
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: const Center(
        child: Text('Keranjang kamu masih kosong', style: TextStyle(fontSize: 16, color: Colors.black54)),
      ),
    );
  }
}
