import '/package.dart';

class CartsController extends GetxController {
  final Apis apis = Apis();

  /// Get user carts
  List<dynamic> get cart {
    return CartsModel.cart;
  }

  Future orders() async {
    apis.getUserCarts(id: UserModel.id).then((response) {
      if (response.success) {
        App.console(response.data);
      }
    }, onError: (error) {
      Get.snackbar('Oops!', error.toString());
    });
  }

  Future<void> increment(dynamic product) async {
    final find = CartsModel.find(product['id']);
    if (find != null) {
      int quantity = find['quantity'];
      if (quantity < 100) {
        find['quantity'] = find['quantity'] + 1;
        await CartsModel.put(product['id'], find);
      }
    }
  }

  Future<void> decrement(dynamic product) async {
    final find = CartsModel.find(product['id']);
    if (find != null) {
      int quantity = find['quantity'];
      if (quantity > 0) {
        find['quantity'] = find['quantity'] - 1;
        await CartsModel.put(product['id'], find);
      }
    }
  }

  Future addToCart(dynamic product) async {
    final find = CartsModel.find(product['id']);
    if (find == null) {
      product['quantity'] = 1;
      await CartsModel.put(product['id'], product);
      return "Product added to cart successfully.";
    } else {
      return "Product already added to cart.";
    }
  }

  Future buy() async {
    try {
      int items = 0;
      double total = 0;

      String date = DateTime.now().date;
      List<Map<String, dynamic>> products = [];
      for (var product in cart) {
        items += 1;
        total += product['quantity'] * product['price'];
        products.add(
          {
            'productId': product['id'],
            'quantity': product['quantity'],
          },
        );
      }

      Res response = await apis.addProductToCart(
        userId: UserModel.id,
        date: date,
        products: products,
      );

      if (response.success) {
        await OrdersModel.put(DateTime.now().timestamp, {
          'date': date,
          'total': total.toStringAsFixed(2),
          'items': items,
          'products': cart,
        });
        await CartsModel.clear();
        Get.snackbar('Congratulation!', response.message);
      } else {
        Get.snackbar('Oops!', response.message);
      }
    } catch (error) {
      Get.snackbar('Oops!', error.toString());
    }
  }
}
