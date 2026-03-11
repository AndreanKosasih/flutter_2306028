import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],

        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          title: Text(
            "toko drew",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(Icons.shopping_cart),
            SizedBox(width: 15)
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [

              // HEADER USER
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          NetworkImage("https://picsum.photos/200"),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hai Drew 👋",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Wilujeng sumping!",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),

              // FLASH SALE BANNER
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.orange,
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SPECIAL OFFER",
                          style: TextStyle(
                              color: Colors.white70),
                        ),
                        Text(
                          "FLASH SALE ⚡",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                          ),
                        ),
                        Text(
                          "Up To 50% Off",
                          style: TextStyle(
                              color: Colors.white),
                        ),
                      ],
                    ),

                    Icon(
                      Icons.local_fire_department,
                      color: Colors.yellow,
                      size: 50,
                    )
                  ],
                ),
              ),

              SizedBox(height: 20),

              // KATEGORI
              Container(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    kategori(Icons.checkroom, "Baju"),
                    kategori(Icons.shopping_bag, "Tas"),
                    kategori(Icons.hiking, "Sepatu"),
                    kategori(Icons.face, "Topi"),
                    kategori(Icons.watch, "Jam"),
                    kategori(Icons.menu_book, "Buku"),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // GRID PRODUK
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 0.75,
                  children: [

                    produk(
                        "Sepatu",
                        "Rp 200.000",
                        "https://images.unsplash.com/photo-1549298916-b41d501d3772"),

                    produk(
                        "Topi",
                        "Rp 50.000",
                        "https://images.unsplash.com/photo-1521369909029-2afed882baee"),

                    produk(
                        "Tas Wanita",
                        "Rp 150.000",
                        "https://images.unsplash.com/photo-1584917865442-de89df76afd3"),

                    produk(
                        "Jam Tangan",
                        "Rp 300.000",
                        "https://images.unsplash.com/photo-1523275335684-37898b6baf30"),
                  ],
                ),
              ),

              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }

  // KATEGORI ICON
  Widget kategori(IconData icon, String nama) {
    return Container(
      width: 80,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [

          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),

          SizedBox(height: 5),

          Text(
            nama,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }

  // CARD PRODUK
  Widget produk(String nama, String harga, String gambar) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ClipRRect(
            borderRadius:
                BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.network(
              gambar,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  nama,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 5),

                Row(
                  children: [
                    Icon(Icons.star,
                        color: Colors.orange, size: 16),
                    Text("4.8")
                  ],
                ),

                SizedBox(height: 5),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      harga,
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.green,
                      size: 20,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}