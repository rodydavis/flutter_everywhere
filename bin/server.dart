import 'dart:io';

import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;

import 'server/router.dart';

void main() {
  final handler = const shelf.Pipeline()
      .addMiddleware(shelf.logRequests())
      .addHandler(Router.handler);

  final port = int.tryParse(Platform.environment['PORT'] ?? '8080');
  final address = InternetAddress.anyIPv4;

  io.serve(handler, address, port).then((server) {
    server.autoCompress = true;
    print('Serving at http://${server.address.host}:${server.port}');
  });
}
