import '/package.dart';

class AddsModel {
  static String name = "Adds";
  static late Box box;

  AddsModel();

  static List get adds => box.get('adds', defaultValue: [
        {
          'discount': '25%',
          'title': "Today’s Special!",
          'detail': 'Get discount for every order, only valid for today',
          'icon': Assets.images.sofa,
        },
        {
          'discount': '35%',
          'title': "Tomorrow will be better!",
          'detail': 'Please give me a star!',
          'icon': Assets.images.shinyChair,
        },
        {
          'discount': '100%',
          'title': "Not discount today!",
          'detail': 'If you have any problem, contact me',
          'icon': Assets.images.lamp,
        },
        {
          'discount': '75%',
          'title': "It's for you!",
          'detail': 'Wish you have a funny time',
          'icon': Assets.images.plasticChair,
        },
        {
          'discount': '65%',
          'title': "Make yourself at home!",
          'detail': 'If you have any confuse, let me now',
          'icon': Assets.images.bookCase,
        },
      ]);

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
