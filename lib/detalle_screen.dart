import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.pink[300], size: 20), onPressed: () => Navigator.pop(context)),
        title: Text("hello cakes", style: TextStyle(color: Colors.pink[300], fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [Icon(Icons.person_outline, color: Colors.pink[300]), const SizedBox(width: 15)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text("<  Cake Food", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
            const SizedBox(height: 20),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink[100]!),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.network(
                        'https://raw.githubusercontent.com/Yaretzi-debug/imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/pastelito.jfif',
                        fit: BoxFit.contain,
                      ), 
                    ),
                  ),
                  Positioned(right: 10, child: Icon(Icons.arrow_forward_ios, color: Colors.pink[200], size: 20)),
                  Positioned(left: 10, child: Icon(Icons.arrow_back_ios, color: Colors.pink[200], size: 20)),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 4, backgroundColor: Colors.pink[300]), const SizedBox(width: 5),
                CircleAvatar(radius: 4, backgroundColor: Colors.pink[100]), const SizedBox(width: 5),
                CircleAvatar(radius: 4, backgroundColor: Colors.pink[100]),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("\$ 25/kg", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black87)),
                Icon(Icons.favorite_border, color: Colors.pink[300]),
              ],
            ),
            const Text("premium bunny strawberry cake (pink)", style: TextStyle(color: Colors.grey, fontSize: 15)),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(color: Colors.pink[300], borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    children: [
                      Icon(Icons.star, color: Colors.white, size: 12),
                      Text(" 4.9 (1.2k)", style: TextStyle(color: Colors.white, fontSize: 10)),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                const Text("500 review", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black87)),
              ],
            ),
            const SizedBox(height: 20),
            const Text("product information", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black87)),
            const SizedBox(height: 5),
            const Text(
              "weight: 1000 grams\nminimal order: 1\ncategory: rabbit cakes",
              style: TextStyle(color: Colors.grey, fontSize: 12, height: 1.5),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink[300],
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                    child: const Text("add to cart", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      side: BorderSide(color: Colors.pink[100]!),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                    child: Text("go back", style: TextStyle(color: Colors.grey[600])),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
