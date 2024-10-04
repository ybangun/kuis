
import 'package:flutter/material.dart';

class BantuanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pusat Bantuan'),
      ),
      body: Center(
        child: Text(
          'Ini adalah halaman pusat bantuan.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
