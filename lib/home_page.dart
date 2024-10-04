import 'package:flutter/material.dart';
import 'bantuan_page.dart'; 

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Barang Supermarket'),
    
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Container untuk gambar
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue, 
                            borderRadius: BorderRadius.circular(8), 
                          ),
                          alignment: Alignment.center, 
                          height: 100, 
                          child: Image.network(
                            supermarketItemList[index].imageUrls[0],
                            fit: BoxFit.contain, 
                            errorBuilder: (context, error, stackTrace) {
                              return Center(child: Text('Gambar tidak tersedia'));
                            },
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(supermarketItemList[index].name),
                        Text(supermarketItemList[index].price),
                        Text('Stok: ${supermarketItemList[index].stock}'),
                      ],
                    ),
                  ),
                );
              },
}