import '/package.dart';

class Apis {
  Https https = Https();

  /// Get all products
  /// fetch('https://fakestoreapi.com/products').then(res=>res.json()).then(json=>console.log(json))
  /// @params {num limit = 10}
  /// @params {num sort =  'desc' or 'asc'}
  Future<Res> getAllProducts({num limit = 10, String sort = 'asc'}) async {
    Map<String, dynamic> query = {};

    if (limit >= 0) {
      query.addAll({'limit': limit.toString()});
    }

    if (sort == 'asc' || sort == 'desc') {
      query.addAll({'sort': sort});
    }

    return https.fetch('/products', query: query).then((response) => response);
  }

  ///Get a single product
  ///fetch('https://fakestoreapi.com/products/1').then(res=>res.json()).then(json=>console.log(json))
  Future<Res> getASingleProduct({num id = 1}) async {
    return https.fetch('/products/$id').then((response) => response);
  }

  /// Add new product
  /// fetch('https://fakestoreapi.com/products',{
  ///   method:"POST",
  ///   body:JSON.stringify({
  ///     title: 'test product',
  ///     price: 13.5,
  ///     description: 'lorem ipsum set',
  ///     image: 'https://i.pravatar.cc',
  ///     category: 'electronic'
  ///   })
  /// }).then(res=>res.json()).then(json=>console.log(json))
  Future<Res> addNewProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    return https.fetch('/products', method: "POST", body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category
    }).then((response) => response);
  }

  /// Update a product
  /// fetch('https://fakestoreapi.com/products/1',{
  ///   method:"PUT|PATCH",
  ///   body:JSON.stringify({
  ///     title: 'test product',
  ///     price: 13.5,
  ///     description: 'lorem ipsum set',
  ///     image: 'https://i.pravatar.cc',
  ///     category: 'electronic'
  ///   })
  /// }).then(res=>res.json()).then(json=>console.log(json))
  Future<Res> updateAProduct({
    required num id,
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    return https.fetch('/products/$id', method: "PUT", body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category
    }).then((response) => response);
  }

  //Delete a product
  ///fetch('https://fakestoreapi.com/products/1').then(res=>res.json()).then(json=>console.log(json))
  Future<Res> deleteAProduct({num id = 1}) async {
    return https
        .fetch('/products/$id', method: "DELETE")
        .then((response) => response);
  }

  ///Get all categories
  ///fetch('https://fakestoreapi.com/products/categories').then(res=>res.json()).then(json=>console.log(json))
  Future<Res> getAllCategories() async {
    return https.fetch('/products/categories').then((response) => response);
  }

  ///Get products in a specific category
  ///fetch('https://fakestoreapi.com/products/category/jewelery').then(res=>res.json()).then(json=>console.log(json))
  Future<Res> getCategoryProduct({String name = 'jewelery'}) async {
    return https.fetch('/products/category/$name').then((response) => response);
  }

  /// Get all carts
  /// fetch('https://fakestoreapi.com/carts').then(res=>res.json()).then(json=>console.log(json))
  /// @params {num limit = 10}
  /// @params {num sort =  'desc' or 'asc'}
  Future<Res> getAllCarts({
    num limit = 10,
    String sort = 'asc',
    String? startdate,
    String? enddate,
  }) async {
    Map<String, dynamic> query = {};

    if (limit > 0) {
      query.addAll({'limit': limit});
    }
    if (sort == 'asc' || sort == 'desc') {
      query.addAll({'sort': sort});
    }
    if (startdate != null && enddate != null) {
      query.addAll({'startdate': startdate, 'enddate': enddate});
    }

    return https.fetch('/carts', query: query).then((response) => response);
  }

  /// Get a single cart
  /// fetch('https://fakestoreapi.com/carts/5').then(res=>res.json()).then(json=>console.log(json))
  Future<Res> getASingleCart({num id = 1}) async {
    return https.fetch('/carts/$id').then((response) => response);
  }

  /// Get user carts
  /// fetch('https://fakestoreapi.com/carts/user/2').then(res=>res.json()).then(json=>console.log(json))
  Future<Res> getUserCarts({num id = 1}) async {
    return https.fetch('/carts/user/$id').then((response) => response);
  }

  /// Add a new product
  /// fetch('https://fakestoreapi.com/carts',{
  ///   method:"POST",
  ///   body:JSON.stringify({
  ///     userId:5,
  ///     date:2020-02-03,
  ///     products:[{productId:5,quantity:1},{productId:1,quantity:5}]
  ///   })
  /// }).then(res=>res.json()).then(json=>console.log(json))
  Future<Res> addProductToCart({
    required num userId,
    required String date,
    required List<Map<String, dynamic>> products,
  }) async {
    return https.fetch('/carts', method: "POST", body: {
      'userId': userId,
      'date': date,
      'products': products,
    }).then((response) => response);
  }

  /// Update a product
  /// fetch('https://fakestoreapi.com/carts/1',{
  ///   method:"PUT|PATCH",
  ///   body:JSON.stringify({
  ///     userId:5,
  ///     date:2020-02-03,
  ///     products:[{productId:5,quantity:1},{productId:1,quantity:5}]
  ///   })
  /// }).then(res=>res.json()).then(json=>console.log(json))
  Future<Res> updateProductToCart({
    required num id,
    required num userId,
    required String date,
    required List<Map<String, dynamic>> products,
  }) async {
    return https.fetch('/carts/$id', method: "PUT", body: {
      'userId': userId,
      'date': date,
      'products': products,
    }).then((response) => response);
  }

  ///Delete a cart
  /// fetch('https://fakestoreapi.com/carts/2').then(res=>res.json()).then(json=>console.log(json))
  Future<Res> deleteCart({num id = 1}) async {
    return https
        .fetch('/carts/$id', method: "DELETE")
        .then((response) => response);
  }

  /// Get all users
  /// fetch('https://fakestoreapi.com/users').then(res=>res.json()).then(json=>console.log(json))
  Future<Res> getAllUsers({num limit = 10, String sort = 'asc'}) async {
    Map<String, dynamic> query = {};

    if (limit > 0) {
      query.addAll({'limit': limit});
    }

    if (sort == 'asc' || sort == 'desc') {
      query.addAll({'sort': sort});
    }

    return https.fetch('/users', query: query).then((response) => response);
  }

  /// Get a single user
  /// fetch('https://fakestoreapi.com/users/1').then(res=>res.json()).then(json=>console.log(json))
  Future<Res> getUser({num id = 1}) async {
    return https.fetch('/users/$id').then((response) => response);
  }

  /// Add a new user
  /// fetch('https://fakestoreapi.com/users',{
  ///   method:"POST",
  ///   body:JSON.stringify({
  ///     email:'John@gmail.com',
  ///     username:'johnd',
  ///     password:'m38rmF$',
  ///     name:{
  ///       firstname:'John',
  ///       lastname:'Doe'
  ///     },
  ///     address:{
  ///       city:'kilcoole',
  ///       street:'7835 new road',
  ///       number:3,
  ///       zipcode:'12926-3874',
  ///       geolocation:{
  ///         lat:'-37.3159',
  ///         long:'81.1496'
  ///       }
  ///     },
  ///     phone:'1-570-236-7033'
  ///   })
  /// }).then(res=>res.json()).then(json=>console.log(json))
  Future<Res> addUser({
    required String email,
    required String username,
    required String password,
    required String firstname,
    required String lastname,
    required String phone,
  }) async {
    return https.fetch('/users', method: "POST", body: {
      "address": {
        "geolocation": {"lat": "40.3467", "long": "-30.1310"},
        "city": "Cullman",
        "street": "Frances Ct",
        "number": 86,
        "zipcode": "29567-1452"
      },
      "email": email,
      "username": username,
      "password": password,
      "name": {"firstname": firstname, "lastname": lastname},
      "phone": phone,
    }).then((response) => response);
  }

  /// Update a users
  /// fetch('https://fakestoreapi.com/users',{
  ///   method:"PUT|PATCH",
  ///   body:JSON.stringify({
  ///     email:'John@gmail.com',
  ///     username:'johnd',
  ///     password:'m38rmF$',
  ///     name:{
  ///       firstname:'John',
  ///       lastname:'Doe'
  ///     },
  ///     address:{
  ///       city:'kilcoole',
  ///       street:'7835 new road',
  ///       number:3,
  ///       zipcode:'12926-3874',
  ///       geolocation:{
  ///         lat:'-37.3159',
  ///         long:'81.1496'
  ///       }
  ///     },
  ///     phone:'1-570-236-7033'
  ///   })
  /// }).then(res=>res.json()).then(json=>console.log(json))
  Future<Res> updateUser({
    required num id,
    required String email,
    required String username,
    required String password,
    required String firstname,
    required String lastname,
    required String phone,
  }) async {
    return https.fetch('/users/$id', method: "PUT", body: {
      'email': email,
      'username': username,
      'password': password,
      'name': {'firstname': firstname, 'lastname': lastname},
      'address': {
        'city': 'kilcoole',
        'street': '7835 new road',
        'number': 3,
        'zipcode': '12926-3874',
        'geolocation': {'lat': '-37.3159', 'long': '81.1496'}
      },
      'phone': phone
    }).then((response) => response);
  }

  /// Delete a user
  /// fetch('https://fakestoreapi.com/users/1').then(res=>res.json()).then(json=>console.log(json))
  Future<Res> deleteUser({num id = 1}) async {
    return await https
        .fetch('/users/$id', method: "DELETE")
        .then((response) => response);
  }

  /// User login
  /// fetch('https://fakestoreapi.com/users/1').then(res=>res.json()).then(json=>console.log(json))
  Future<Res> login({
    required String username,
    required String password,
  }) async {
    return https.fetch(
      '/auth/login',
      method: 'POST',
      body: {'username': username, 'password': password},
    ).then((response) => response);
  }
}
