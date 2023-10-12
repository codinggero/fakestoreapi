import '/package.dart';

class UserModel {
  static String name = "Users";
  static late Box box;

  UserModel();

  static num get id => box.get('id', defaultValue: 3);
  static String? get token => box.get('token');

  static String? get email => box.get('email');
  static String? get username => box.get('username');
  static String? get password => box.get('password');
  static String? get phone => box.get('phone');

  static String? get firstname => box.get('firstname');
  static String? get lastname => box.get('lastname');

  static String? get address => box.get('address');
  static String? get city => box.get('city');
  static String? get street => box.get('street');
  static String? get number => box.get('number');
  static String? get zipcode => box.get('zipcode');

  static String? get geolocation => box.get('geolocation');
  static String? get lat => box.get('lat');
  static String? get long => box.get('long');

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
