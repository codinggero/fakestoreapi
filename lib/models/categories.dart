import '/package.dart';

class CategoriesModel {
  static String name = "Categories";
  static late Box box;

  CategoriesModel();

  static List get categories => box.get('categories', defaultValue: []);

  static put(String key, dynamic value) async {
    await box.put(key, value);
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
