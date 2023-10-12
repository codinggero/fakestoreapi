import '/package.dart';

class CategoriesController extends GetxController {
  final Apis apis = Apis();

  /// Get all categories
  Future<dynamic> all({
    void Function(dynamic)? online,
    void Function(List<dynamic>)? offline,
  }) async {
    try {
      offline!(CategoriesModel.categories);
      Res response = await apis.getAllCategories();
      if (response.success) {
        await CategoriesModel.put('categories', response.data);
        online!(response.data);
        return response.data;
      } else {
        Get.snackbar('Oops!', response.message);
        online!(CategoriesModel.categories);
        return CategoriesModel.categories;
      }
    } catch (e) {
      Get.snackbar('Oops!', e.toString());
    }
  }
}
