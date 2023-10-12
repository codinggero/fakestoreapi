import 'package:flutter/material.dart';
import '/package.dart';
import './widget/index.dart';

class ProductDetails extends StatefulWidget {
  static String routeName = "/ProductDetails";

  final dynamic product;

  const ProductDetails({super.key, this.product});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails>
    with TickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? animation;
  bool isLiked = true;

  final cartsController = Get.find<CartsController>();

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: controller!, curve: Curves.easeInToLinear),
    );
    controller!.forward();

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cartsController.addToCart(widget.product).then((message) {
            Get.snackbar("Ok", message);
          });
        },
        backgroundColor: App.green,
        child: Icon(
          Icons.shopping_basket,
          color: App.white,
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xfffbfbfb),
              Color(0xfff7f7f7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  AppBars(
                    isLiked: isLiked,
                    onBack: () {
                      Navigator.of(context).pop();
                    },
                    onLiked: () {
                      setState(
                        () {
                          isLiked = !isLiked;
                        },
                      );
                    },
                  ),
                  ProductImage(
                    opacity: animation!.value,
                    animation: animation!,
                    image: widget.product['image'],
                    builder: (context, child) {
                      return AnimatedOpacity(
                        duration: const Duration(milliseconds: 500),
                        opacity: animation!.value,
                        child: child,
                      );
                    },
                  ),
                ],
              ),
              DraggableScrollableSheet(
                maxChildSize: .8,
                initialChildSize: .53,
                minChildSize: .53,
                builder: (context, scrollController) {
                  return Container(
                    padding: EdgeInsets.only(
                      left: App.padding,
                      right: App.padding,
                      top: App.padding,
                      bottom: 0,
                    ),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        color: Colors.white),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          const SizedBox(height: 5),
                          Container(
                            alignment: Alignment.center,
                            child: Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                color: App.iconColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(
                                width: App.wp(60),
                                child: TitleText(
                                  title: widget.product['title'],
                                  fontSize: 20,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      TitleText(
                                        title: "\$ ",
                                        fontSize: 18,
                                        color: App.red,
                                      ),
                                      TitleText(
                                        title:
                                            widget.product['price'].toString(),
                                        fontSize: 25,
                                      ),
                                    ],
                                  ),
                                  Rating(
                                      rate: widget.product['rating']['rate']),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          ProuctsCatagories(
                            category: widget.product['category'],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Description(
                            description: widget.product['description'],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
