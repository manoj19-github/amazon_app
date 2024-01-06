import 'package:amazon/features/admin/screens/add_product_screen.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  void navigateToAddProducts() {
    Navigator.pushNamed(
      context,
      AddProductScreen.routeName,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('products'),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        tooltip: "Add Product",
        shape: CircleBorder(),
        backgroundColor: Color.fromARGB(255, 29, 201, 192),
        child: const Icon(Icons.add),
        onPressed: navigateToAddProducts,
      ),
    );
  }
}
