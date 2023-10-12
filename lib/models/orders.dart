import '/package.dart';

class OrdersModel {
  static String name = "Orders";
  static late Box box;

  OrdersModel();
  static List get keys => box.keys.toList();

  static List get orders => box.values.toList();

  static put(dynamic key, dynamic value) async {
    await box.put(key.toString(), value);
    await init();
  }

  static putAll(Map<dynamic, dynamic> entries) async {
    await box.putAll(entries);
    await init();
  }

  static init() async {
    box = await Hive.openBox(name);
    return box;
  }
}
