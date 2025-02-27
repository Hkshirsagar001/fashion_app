import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Checkout"), leading: const BackButton()),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Delivery Address", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ListTile(
              leading: const Icon(Icons.location_on, color: Colors.orange),
              title: const Text("25/3 Housing Estate, Sylhet"),
              trailing: TextButton(onPressed: () {}, child: const Text("Change")),
            ),
            const ListTile(
              leading: Icon(Icons.access_time, color: Colors.orange),
              title: Text("Delivered in next 7 days"),
            ),
            const SizedBox(height: 10),
            const Text("Payment Method", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Center(
              child: Image.asset( 
                "assets/Group 17305.png"
              ),
            ), 
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[200],
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Add Voucher", style: TextStyle(color: Colors.black45)),
            ),
            const SizedBox(height: 10),
            const Text("Total Items (3): \$116.00"),
            const Text("Standard Delivery: \$12.00"),
            const Text("Total Payment: \$126.00", style: TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
              child: const Text("Pay Now", style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
