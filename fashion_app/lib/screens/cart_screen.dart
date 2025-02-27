import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Map<String, dynamic>> cartItems = [
    {
      "image": "assets/product1.png",
      "name": "Premium Tangerine Shirt",
      "color": "Yellow",
      "size": "8",
      "price": 257.85,
      "quantity": 1,
    },
    {
      "image": "assets/product3.png",
      "name": "Leather Tangerine Coat",
      "color": "Yellow",
      "size": "8",
      "price": 257.85,
      "quantity": 1,
    }
  ];

  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  double get totalAmount {
    return cartItems.fold(0, (sum, item) => sum + (item['price'] * item['quantity']));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Cart",
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  var item = cartItems[index];
                  return Card(
                    elevation: 0,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            item['image'],
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['name'],
                                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "${item['color']} | Size ${item['size']}",
                                style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "\$${item['price'].toStringAsFixed(2)}",
                                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "${item['quantity']}x",
                              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 10),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.orange),
                              onPressed: () => removeItem(index),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(thickness: 1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                children: [
                  _priceRow("Total Items (${cartItems.length})", totalAmount),
                  _priceRow("Standard Delivery", 12.00),
                  _priceRow("Total Payment", totalAmount + 12.00, isBold: true),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFF7A00),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {},
                child: Text(
                  "Checkout Now",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _priceRow(String title, double amount, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(fontSize: 16, fontWeight: isBold ? FontWeight.bold : FontWeight.w400),
          ),
          Text(
            "\$${amount.toStringAsFixed(2)}",
            style: GoogleFonts.poppins(fontSize: 16, fontWeight: isBold ? FontWeight.bold : FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
