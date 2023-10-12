import 'package:flutter/material.dart';
import '/package.dart';
import './widget/index.dart';

class Orders extends StatefulWidget {
  static String routeName = "/Orders";

  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  final ordersController = Get.find<OrdersController>();

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
                const SizedBox(height: 24),
                const SearchField(),
                const SizedBox(height: 24),
                Items(orders: ordersController.orders),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
