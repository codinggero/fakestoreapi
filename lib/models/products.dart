import '/package.dart';

class ProductsModel {
  static String name = "Products";
  static late Box box;

  ProductsModel();

  static List get products => box.get('products', defaultValue: []);

  static put(String key, dynamic value) async {
    await box.put(key, value);
    await init();
  }

  static putAll(Map<dynamic, dynamic> entries) async {
    await box.putAll(entries);
    await init();
  }

  static find(dynamic key, {dynamic defaultValue}) {
    return box.get(key, defaultValue: []);
  }

  static init() async {
    box = await Hive.openBox(name);
    return box;
  }
}
