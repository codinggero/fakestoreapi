import '/package.dart';

class AddsController extends GetxController {
  final Apis apis = Apis();

  /// Get user carts
  Future<dynamic> all({
    void Function(dynamic)? online,
    void Function(List<dynamic>)? offline,
  }) async {
    try {
      offline!(AddsModel.adds);
      online!(AddsModel.adds);
      return AddsModel.adds;
    } catch (e) {
      Get.snackbar('Oops!', e.toString());
    }
  }
}
