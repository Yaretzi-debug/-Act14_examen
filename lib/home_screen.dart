import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu, color: Colors.pink[300]),
        title: Text("hello cakes", style: TextStyle(color: Colors.pink[300], fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [Icon(Icons.person_outline, color: Colors.pink[300]), const SizedBox(width: 15)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Buen dia, Yaretzi", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87)),
            const SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                hintText: "search something",
                hintStyle: TextStyle(color: Colors.grey[400]),
                suffixIcon: Icon(Icons.search, color: Colors.grey[400]),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.pink[100]!)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.pink[100]!)),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              decoration: BoxDecoration(color: Colors.pink[50], borderRadius: BorderRadius.circular(30)),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: [
                  _itemGrid(Icons.cookie, "cookies", context),
                  _itemGrid(Icons.add, "orders", context),
                  _itemGrid(Icons.donut_large, "donuts", context),
                  _itemGrid(Icons.medication_outlined, "flavors", context),
                  _itemGrid(Icons.flag_outlined, "delivery", context),
                  _itemGrid(Icons.grid_view_rounded, "others", context),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Text("pastry categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _catIcon(Icons.cake, "cakes", context),
                _catIcon(Icons.icecream, "cones", context),
                _catIcon(Icons.bakery_dining, "bread", context),
                IconButton(
                  onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
                  icon: const Icon(Icons.arrow_forward_ios, size: 16),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pink[300],
        unselectedItemColor: Colors.grey[400],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.email_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
        ],
      ),
    );
  }

  Widget _itemGrid(IconData icon, String text, BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.pink[300], size: 28),
        const SizedBox(height: 8),
        Text(text, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      ],
    );
  }

  Widget _catIcon(IconData icon, String label, BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.pink[100]!), borderRadius: BorderRadius.circular(15)),
          child: Icon(icon, size: 30, color: Colors.pink[200]),
        ),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black87)),
      ],
    );
  }
}
