import '/package.dart';

class OrdersController extends GetxController {
  final Apis apis = Apis();

  List<dynamic> get orders {
    return OrdersModel.orders;
  }
}
