import 'package:flutter/material.dart';
import '/package.dart';
import './widget/index.dart';

class Cart extends StatefulWidget {
  static String routeName = "/Cart";

  const Cart({super.key});

  @override
  State<Cart> createState() => CartState();
}

class CartState extends State<Cart> {
  final cartsController = Get.find<CartsController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(App.padding),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Items(
                  products: cartsController.cart,
                  increment: (product) {
                    cartsController.increment(product).then((value) {
                      setState(() {});
                    });
                  },
                  decrement: (product) {
                    cartsController.decrement(product).then((value) {
                      setState(() {});
                    });
                  },
                ),
                const Divider(thickness: 1, height: 70),
                Total(products: cartsController.cart),
                const SizedBox(height: 30),
                Button(
                  label: 'Buy',
                  fontSize: 24,
                  backgroundColor: App.orange,
                  minimumSize: Size(App.width, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () {
                    cartsController.buy().then((value) {
                      setState(() {});
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
