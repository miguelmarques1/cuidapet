import 'package:gradient_text/app/core/logger/app_logger.dart';
import 'package:logger/logger.dart';

class AppLoggerImpl implements AppLogger {
  final logger = Logger();
  var messages = <String>[];

  @override
  void debug(message, [error, StackTrace? stacktrace]) {
    logger.d(message, error, stacktrace);
  }

  @override
  void error(message, [error, StackTrace? stacktrace]) {
    logger.e(message, error, stacktrace);
  }

  @override
  void info(message, [error, StackTrace? stacktrace]) {
    logger.i(message, error, stacktrace);
  }

  @override
  void warning(message, [error, StackTrace? stacktrace]) {
    logger.w(message, error, stacktrace);
  }

  @override
  void append(message) {
    messages.add(message);
  }

  @override
  void closeAppend() {
    info(messages.join('\n'));
    messages = [];
  }
}
