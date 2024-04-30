import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keuanganku/widgets/ShoesCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kolom Pencarian
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari Sepatu Mu Disini Po...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),

            // DefaultTabController untuk 3 merek
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(text: 'Nike'),
                      Tab(text: 'Adidas'),
                      Tab(text: 'Vans'),
                    ],
                  ),
                  // Isi dari setiap tab
                  Container(
                    height: 800,
                    child: TabBarView( 
                      children: [
                        // Konten untuk tab Nike
                        ListView(
                          padding: EdgeInsets.all(10),
                          shrinkWrap: true,
                          children: [
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike2.png'),
                            ShoesCard(image: 'assets/images/nike3.png'),
                            ShoesCard(image: 'assets/images/nike4.png'),
                            ShoesCard(image: 'assets/images/nike5.png'),
                            ShoesCard(image: 'assets/images/nike6.png'),
                            ShoesCard(image: 'assets/images/nike7.png'),
                            ShoesCard(image: 'assets/images/yeezy1.png'),
                          ],
                        ),
                        // Konten untuk tab Adidas
                        ListView(
                          padding: EdgeInsets.all(10),
                          shrinkWrap: true,
                          children: [
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                          ],
                        ),
                        // Konten untuk tab Vans
                        ListView(
                          padding: EdgeInsets.all(10),
                          shrinkWrap: true,
                          children: [
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                            ShoesCard(image: 'assets/images/nike1.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    
          ],
        ),
      ),
    );
  }
}
