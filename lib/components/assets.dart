class Assets {
  static Images images = Images('assets/images');
  static Svgs icon = Svgs('assets/icons');
}

class Images {
  final String path;
  Images(this.path);

  String genrate(String name, {String type = 'png'}) {
    return '$path/$name.$type';
  }

  String get bookCase => '$path/book_case.png';
  String get electronics => '$path/electronics.png';
  String get emptyCart => '$path/empty-cart.png';
  String get error => '$path/error.jpg';
  String get ina => '$path/ina.png';
  String get lamp => '$path/lamp.png';
  String get logo => '$path/logo.png';
  String get order => '$path/order.png';
  String get plasticChair => '$path/plastic_chair.png';
  String get rating => '$path/rating.png';
  String get shinyChair => '$path/shiny_chair.png';
  String get signin => '$path/signin.png';
  String get signup => '$path/signup.png';
  String get sofa => '$path/sofa.png';
  String get user => '$path/user.png';
}

class Svgs {
  final String path;
  Svgs(this.path);
  String get logo => '$path/logo.svg';
}
