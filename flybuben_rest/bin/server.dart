import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:flybuben_core/api.dart';

// Configure routes.
final _router = Router()
  ..get('/', _rootHandler)
  ..get('/echo/<message>', _echoHandler);

Response _rootHandler(Request req) {
  return Response.ok(
    'Բարև Ձեզ։\n',
    headers: {'content-type': 'text/plain'}
  );
}

Response _echoHandler(Request request) {
  // final message = Uri.decodeComponent(request.params['message']);
  final messageEncoded = request.params['message'] ?? '';
  final messageDecoded = Uri.decodeFull(messageEncoded);
  return Response.ok(
    '${toAybuben(messageDecoded)}\n',
    headers: {'content-type': 'text/plain'}
  );
}

void main(List<String> args) async {
  // Use any available host or container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;

  // Configure a pipeline that logs requests.
  final handler = Pipeline().addMiddleware(logRequests()).addHandler(_router);

  // For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(handler, ip, port);
  print('Server listening on port ${server.port}');
}
