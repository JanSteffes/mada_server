import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:openapi_base/openapi_base.dart';

final _logger = Logger('example_server');
const _hostname = 'localhost';

Future<void> main() async {
  // PrintAppender.setupLogging();
  // _logger.info('Starting Server ...');
  // final server = OpenApiShelfServer(
  //   TestApiRouter(ApiEndpointProvider.static(TestApiImpl())),
  // );
  // final process = await server.startServer(address: _hostname);
  // _logger.fine('startServer finished.');
  // final exitCode = await process.exitCode;
  // _logger.fine('exitCode from process: $exitCode');
}
