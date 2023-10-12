import 'package:flutter/material.dart';
import '/package.dart';

class Home extends StatefulWidget {
  static String routeName = "/Home";

  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  late ScrollController controller;
  num limit = 10;

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

  Future init() async {
    categoriesController.all(online: (data) {
      setState(() {
        categories = data;
      });
    }, offline: (data) {
      setState(() {
        categories = data;
      });
    }).then((data) {
      setState(() {
        categories = data;
      });
    });

    productsController.all(online: (data) {
      setState(() {
        products = data;
      });
    }, offline: (data) {
      setState(() {
        products = data;
      });
    }).then((data) {
      setState(() {
        products = data;
      });
    });

    addsController.all(online: (data) {
      setState(() {
        adds = data;
      });
    }, offline: (data) {
      setState(() {
        adds = data;
      });
    }).then((data) {
      setState(() {
        adds = data;
      });
    });
  }

  void handleScrolling() {
    if (controller.offset >= controller.position.maxScrollExtent) {
      limit += 10;
      productsController
          .all(
              limit: limit,
              online: (data) {
                setState(() {
                  products = data;
                });
              },
              offline: (data) {
                setState(() {
                  products = data;
                });
              })
          .then((data) {
        setState(() {
          products = data;
        });
      });
    }
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        Adds(adds: adds),
        const SizedBox(height: 24),
        const SearchField(),
        const SizedBox(height: 24),
        const MenueTitle(left: 'Categories'),
        const SizedBox(height: 16),
        Categories(
          categories: categories,
          onTap: (category) {
            Navigate.next(context, Products(category: category));
          },
        ),
        const SizedBox(height: 24),
        MenueTitle(left: 'Most Popular', right: 'More', onPressed: () {}),
      ],
    );
  }

  Widget populars() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        maxCrossAxisExtent: App.wp(50),
        mainAxisExtent: App.hp(45),
      ),
      delegate: SliverChildBuilderDelegate(
        buildPopularItem,
        childCount: products.length,
      ),
    );
  }

  Widget buildPopularItem(BuildContext context, int index) {
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
    const padding = EdgeInsets.fromLTRB(24, 24, 24, 0);
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          controller: controller,
          slivers: <Widget>[
            const SliverPadding(
              padding: EdgeInsets.only(top: 24),
              sliver: SliverAppBar(
                pinned: true,
                flexibleSpace: HomeAppBar(),
              ),
            ),
            SliverPadding(
              padding: padding,
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  ((context, index) => _buildBody(context)),
                  childCount: 1,
                ),
              ),
            ),
            SliverPadding(
              padding: padding,
              sliver: populars(),
            ),
          ],
        ),
      ),
    );
  }
}
