import '/package.dart';

class Services extends GetxService {
  static init() async {
    await Get.putAsync(() => Services().start());
  }

  Future<Services> start() async {
    await AddsModel.init();
    await CartsModel.init();
    await CategoriesModel.init();
    await ProductsModel.init();
    await UserModel.init();
    await OrdersModel.init();

    return this;
  }
}
