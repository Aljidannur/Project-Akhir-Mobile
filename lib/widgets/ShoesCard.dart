import 'package:flutter/material.dart';

class ShoesCard extends StatelessWidget {
  ShoesCard({super.key, required this.image});

  late String image = '';

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: const Color.fromARGB(255, 230, 230, 230),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Nike Ardila Jordan Low', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text('Inspirasi Untuk Anak Anak Skena Boy', style: TextStyle(fontSize: 12),),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Rp.1.500.000', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                        child: Text('Detail')
                      ),
                    ),
                  ],
                )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}