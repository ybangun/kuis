// bantuan_page.dart
import 'package:flutter/material.dart';

class BantuanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Bantuan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Menambahkan gambar customer service
            Center(
              child: Image.asset(
                'assets/images/customerServices.png',
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Pertanyaan Umum (FAQ)\n'
              'Temukan jawaban atas berbagai pertanyaan yang sering ditanyakan '
              'oleh pengguna mengenai penggunaan aplikasi ini. Dari proses '
              'pendaftaran, cara membeli barang, hingga pengaturan akun, '
              'semua jawaban ada di sini untuk mempermudah pengalaman Anda.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Panduan Penggunaan\n'
              'Pelajari langkah demi langkah cara menggunakan fitur-fitur '
              'aplikasi kami. Panduan ini akan membantu Anda memahami '
              'bagaimana memaksimalkan penggunaan aplikasi, mulai dari mencari '
              'produk hingga menyelesaikan transaksi dengan mudah.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Kontak Dukungan\n'
              'Jika Anda membutuhkan bantuan lebih lanjut, tim dukungan kami '
              'siap membantu. Anda dapat menghubungi kami melalui email, '
              'telepon, atau live chat. Kami berkomitmen untuk memberikan '
              'solusi terbaik bagi setiap masalah atau pertanyaan yang Anda '
              'miliki.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali ke Halaman Home'),
            ),
          ],
        ),
      ),
    );
  }
}
