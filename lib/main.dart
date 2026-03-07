import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          title: Text('Aplikasi Artikel'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Gambar Artikel
              ClipRRect(
                borderRadius: BorderRadius.circular(30),

                child: Image.network(
                  'https://picsum.photos/id/237/400/200',
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 10),

              // Judul Artikel
              Text(
                "Judul Artikel Baru",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              // Isi Artikel
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                "Ut enim ad minim veniam.",
                style: TextStyle(fontSize: 14),
              ),

              SizedBox(height: 10),

              // Komentar
              Text(
                "Komentar",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text("John Doe"),
                  subtitle: Text("Artikel yang sangat menarik!"),
                ),
              ),

              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text("Jane Smith"),
                  subtitle: Text("Terima kasih atas informasinya."),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}