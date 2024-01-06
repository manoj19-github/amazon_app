import 'package:amazon/common/widgets/custom_button.dart';
import 'package:amazon/common/widgets/custom_textfield.dart';
import 'package:amazon/constants/global_variables.dart';
import 'package:amazon/features/admin/screens/post_sccreen.dart';
import 'package:amazon/features/screens/account_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  static const String routeName = '/add-product';
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController productController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController qtyController = TextEditingController();
  int _pageIndex = 0;
  double bottomBarWidth = 30;
  double bottomBarBorderWidth = 5;
  int _onItemTapped = 0;
  String category = "Mobiles";
  List<String> productCategories = [
    'Mobiles',
    'Essenticals',
    'Appliances',
    'Fashion'
  ];

  void goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    super.dispose();
    productController.dispose();
    descController.dispose();
    priceController.dispose();
    qtyController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          leading: InkWell(
            child: Icon(Icons.arrow_back),
            onTap: () => goBack(context),
          ),
          actions: [],
          flexibleSpace: Container(
            decoration:
                const BoxDecoration(gradient: GlobalVariables.appBarGradient),
          ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text("Add Product"),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 8.0),
              child: Column(
                children: [
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    dashPattern: [10, 4],
                    strokeCap: StrokeCap.round,
                    child: Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.folder_open,
                              size: 40,
                              color: Colors.grey,
                            ),
                            // const SizedBox(height: 15),
                            Text('Select Product Images',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey.shade400))
                          ],
                        )),
                  ),
                  const SizedBox(height: 40),
                  CustomTextField(
                      controller: productController, hintText: 'Product Name'),
                  const SizedBox(height: 10),
                  CustomTextField(
                    controller: descController,
                    hintText: 'Description',
                    maxLines: 7,
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                      controller: priceController, hintText: 'Price'),
                  const SizedBox(height: 10),
                  CustomTextField(
                      controller: qtyController, hintText: 'Quantity'),
                  SizedBox(
                    width: double.infinity,
                    child: DropdownButton(
                        value: category,
                        icon: Icon(Icons.keyboard_arrow_down),
                        items: productCategories.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            category = newValue!;
                          });
                        }),
                  ),
                  const SizedBox(height: 10),
                  CustomButton(
                    text: 'SELL',
                    onTap: () {},
                    color: Color.fromARGB(255, 29, 201, 192),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
