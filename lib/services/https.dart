import '/package.dart';

class Res {
  dynamic data;
  int code;
  String message;
  bool success;

  Res({
    this.success = false,
    this.code = 500,
    this.data,
    this.message = "Oop's Something Wen't Wrong!",
  });

  factory Res.response(
    Response<dynamic> res, {
    required String path,
    required String method,
    dynamic query,
    dynamic body,
  }) {
    App.console({
      'path': path,
      'method': method,
      'query': query,
      'body': body,
      'response': {
        'success': res.isOk,
        'statusCode': res.statusCode,
        'statusText': res.statusText,
        'body': res.body,
      }
    });

    if (res.isOk) {
      return Res(
        success: res.isOk,
        data: res.body,
        code: res.statusCode ?? 200,
        message: res.statusText ?? "Ok",
      );
    } else {
      return Res(
        success: res.isOk,
        data: res.body,
        code: res.statusCode ?? 400,
        message: res.statusText ?? "Oop's Something Wen't Wrong!",
      );
    }
  }

  factory Res.error(String err) {
    return Res(message: err);
  }
}

class Https extends GetConnect {
  String base = "https://fakestoreapi.com";

  String url(String path) {
    return "$base$path";
  }

  Map<String, String>? get headers {
    return {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${UserModel.token}'
    };
  }

  Future<Res> fetch(
    String path, {
    String method = "get",
    Map<String, dynamic>? query,
    dynamic body,
  }) async {
    try {
      if (method.toLowerCase() == 'get') {
        Response response = await get(
          url(path),
          headers: headers,
          query: query,
        );
        return Res.response(
          response,
          path: path,
          method: method,
          query: query,
          body: body,
        );
      } else if (method.toLowerCase() == 'delete') {
        Response response = await delete(
          url(path),
          headers: headers,
          query: query,
        );
        return Res.response(
          response,
          path: path,
          method: method,
          query: query,
          body: body,
        );
      } else if (method.toLowerCase() == 'post') {
        Response response = await post(
          url(path),
          body,
          headers: headers,
          query: query,
        );
        return Res.response(
          response,
          path: path,
          method: method,
          query: query,
          body: body,
        );
      } else if (method.toLowerCase() == 'put') {
        Response response = await put(
          url(path),
          body,
          headers: headers,
          query: query,
        );
        return Res.response(
          response,
          path: path,
          method: method,
          query: query,
          body: body,
        );
      } else if (method.toLowerCase() == 'patch') {
        Response response = await patch(
          url(path),
          body,
          headers: headers,
          query: query,
        );
        return Res.response(
          response,
          path: path,
          method: method,
          query: query,
          body: body,
        );
      } else {
        return Res();
      }
    } catch (err) {
      App.console({
        'block': "catch",
        'path': path,
        'method': method,
        'query': query,
        'body': body,
        'err': err
      });
      return Res.error(err.toString());
    }
  }
}
