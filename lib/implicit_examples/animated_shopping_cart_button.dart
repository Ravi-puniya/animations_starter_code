import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  const ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  bool iscart = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              iscart = !iscart;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: iscart ? 50 : 50,
            height: iscart ? 50 : 50,
            decoration: BoxDecoration(
              color: iscart ? Colors.green : Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Icon(
              iscart ? Icons.check : Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
