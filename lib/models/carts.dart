import '/package.dart';

class CartsModel {
  static String name = "Carts";
  static late Box box;

  CartsModel();

  static List<dynamic> get cart => box.values.toList();

  static put(dynamic key, dynamic value) async {
    await box.put(key.toString(), value);
    await init();
  }

  static find(dynamic key) {
    return box.get(key.toString());
  }

  static clear() async {
    await box.clear();
  }

  static init() async {
    box = await Hive.openBox(name);
    return box;
  }
}
