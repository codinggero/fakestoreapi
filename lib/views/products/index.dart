import 'package:flutter/material.dart';
import '/package.dart';
export './details.dart';

class Products extends StatefulWidget {
  static String routeName = "/Products";
  final String? category;
  const Products({super.key, this.category});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  late ScrollController controller;

  final cartsController = Get.find<CartsController>();
  final categoriesController = Get.find<CategoriesController>();
  final productsController = Get.find<ProductsController>();
  final usersController = Get.find<UsersController>();
  final addsController = Get.find<AddsController>();

  List categories = [];
  List products = [];
  List adds = [];

  @override
  void initState() {
    super.initState();
    controller = ScrollController()..addListener(handleScrolling);

    init().then((value) {
      setState(() {});
    });
  }

  void handleScrolling() {
    if (controller.offset >= controller.position.maxScrollExtent) {
      App.console("handleScrolling");
      setState(() {});
    }
  }

  Future init() async {
    productsController
        .products(
      name: widget.category!,
      online: (data) {
        setState(() {
          products = data;
        });
      },
      offline: (data) {
        setState(() {
          products = data;
        });
      },
    )
        .then((data) {
      setState(() {
        products = data;
      });
    });
  }

  Widget grid() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 2,
        mainAxisExtent: App.hp(45),
      ),
      itemCount: products.length,
      itemBuilder: itemBuilder,
    );
  }

  Widget itemBuilder(BuildContext context, int index) {
    return ProductCard(
      products: products[index],
      onTap: () {
        Navigate.next(
          context,
          ProductDetails(
            product: products[index],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(App.padding),
          child: Column(
            children: [
              SizedBox(height: App.padding),
              SearchField(
                onTap: () {},
              ),
              SizedBox(height: App.padding),
              SizedBox(
                height: App.hp(80),
                child: grid(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
