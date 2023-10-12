import '/package.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(CartsController());
    Get.put(CategoriesController());
    Get.put(ProductsController());
    Get.put(UsersController());
    Get.put(AddsController());
    Get.put(OrdersController());
  }
}
