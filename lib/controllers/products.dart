import '/package.dart';

class ProductsController extends GetxController {
  final Apis apis = Apis();

  Future<dynamic> all({
    num limit = 10,
    String sort = 'asc',
    void Function(dynamic)? online,
    void Function(List<dynamic>)? offline,
  }) async {
    try {
      offline!(ProductsModel.products);
      Res response = await apis.getAllProducts(limit: limit, sort: sort);
      if (response.success) {
        await ProductsModel.put('products', response.data);
        online!(response.data);
        return response.data;
      } else {
        Get.snackbar('Oops!', response.message);
        online!(ProductsModel.products);
        return ProductsModel.products;
      }
    } catch (e) {
      Get.snackbar('Oops!', e.toString());
    }
  }

  Future<dynamic> products({
    num limit = 10,
    String sort = 'asc',
    String name = 'jewelery',
    void Function(dynamic)? online,
    void Function(List<dynamic>)? offline,
  }) async {
    try {
      offline!(ProductsModel.find(name));
      Res response = await apis.getCategoryProduct(name: name);
      if (response.success) {
        await ProductsModel.put(name, response.data);
        online!(response.data);
        return response.data;
      } else {
        Get.snackbar('Oops!', response.message);
        online!(ProductsModel.find(name));
        return ProductsModel.find(name);
      }
    } catch (e) {
      Get.snackbar('Oops!', e.toString());
    }
  }
}
