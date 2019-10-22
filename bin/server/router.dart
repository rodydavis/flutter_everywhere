import 'dart:async';

import 'package:shelf/shelf.dart' as shelf;

import 'controllers/index.dart';
import 'response.dart';

class Router {
  static FutureOr<shelf.Response> handler(shelf.Request request) {
    var component = request.url.pathSegments.first;
    var handler = _handlers(request)[component];
    if (handler == null) return shelf.Response.notFound(null);
    return handler;
  }

  static Map<String, FutureOr<shelf.Response>> _handlers(
      shelf.Request request) {
    return {
      'info': ServerResponse('Info', body: {
        "version": 'v1.0.0',
        "status": "ok",
      }).ok(),
      'counter': CounterController().result(request),
    };
  }
}
