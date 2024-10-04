
import 'package:flutter/material.dart';
import 'daftar_barang_dummy.dart'; 
import 'bantuan_page.dart'; 

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Barang Supermarket'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Menampilkan username
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Selamat datang, $username',
              style: TextStyle(fontSize: 20),
            ),
          ),
          // Card untuk navigasi ke halaman bantuan
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BantuanPage()),
              );
            },
            child: Card(
              margin: EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Bantuan', style: TextStyle(fontSize: 18)),
              ),
            ),
          ),
          
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, 
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: supermarketItemList.length,
              itemBuilder: (context, index) {
                final item = supermarketItemList[index];
                return Card(
                  color: Colors.blue, 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    children: [
                      
                      Container(
                        height: 100, 
                        width: 100, 
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.blue, width: 2), 
                        ),
                        alignment: Alignment.center,
                        child: Image.network(
                          item.imageUrls[0], 
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Center(child: Text('Gambar tidak tersedia'));
                          },
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(item.name, style: TextStyle(color: Colors.white)), 
                      Text(item.price, style: TextStyle(color: Colors.white)), 
                      Text('Stok: ${item.stock}', style: TextStyle(color: Colors.white)), 
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
