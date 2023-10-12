import '/package.dart';

export './signin/index.dart';
export './signup/index.dart';
export './splash/index.dart';
export './home/index.dart';
export './profile/index.dart';
export './products/index.dart';
export './cart/index.dart';
export './orders/index.dart';
export './wallet/index.dart';

class Pages {
  static get init => [
        GetPage(
          name: Cart.routeName,
          page: () => const Cart(),
        ),
        GetPage(
          name: Index.routeName,
          page: () => const Index(),
        ),
        GetPage(
          name: Home.routeName,
          page: () => const Home(),
        ),
        GetPage(
          name: Products.routeName,
          page: () => const Products(),
        ),
        GetPage(
          name: ProductDetails.routeName,
          page: () => const ProductDetails(),
        ),
        GetPage(
          name: Profile.routeName,
          page: () => const Profile(),
        ),
        GetPage(
          name: Signin.routeName,
          page: () => const Signin(),
        ),
        GetPage(
          name: Signup.routeName,
          page: () => const Signup(),
        ),
        GetPage(
          name: Splash.routeName,
          page: () => const Splash(),
        ),
      ];
}
