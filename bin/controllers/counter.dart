import 'package:flutter_everywhere/data/models/counter.dart';
import 'package:shelf/shelf.dart' as shelf;

import 'response.dart';

class CounterController implements ResponseImpl {
  const CounterController();

  @override
  Future<shelf.Response> result(shelf.Request request) async {
    final _model = CounterModel();
    final _params = request.url.queryParameters;
    if (_params != null) {
      final _val = int.tryParse(_params['count'] ?? '0');
      _model.set(_val);
    } else {
      _model.set(1);
    }
    return ServerResponse('Info', body: {
      "counter": _model.value,
    }).ok();
  }
}
