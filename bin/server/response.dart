import 'dart:convert';

import 'package:shelf/shelf.dart' as shelf;

class ServerResponse {
  final String message;
  final dynamic body;
  final StatusType type;

  ServerResponse(
    this.message, {
    this.type = StatusType.success,
    this.body,
  });

  Map<String, dynamic> toJson() {
    return {
      "status": type.toString().replaceAll('StatusType.', ''),
      "message": message,
      "body": body ?? '',
    };
  }

  String toJsonString() {
    return json.encode(toJson());
  }

  shelf.Response ok() {
    return shelf.Response.ok(
      toJsonString(),
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }
}

enum StatusType { success, error }

abstract class ResponseImpl {
  Future<shelf.Response> result(shelf.Request request);
}
