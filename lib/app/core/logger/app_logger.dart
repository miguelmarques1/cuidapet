abstract class AppLogger {
  void debug(dynamic message, [dynamic error, StackTrace? stacktrace]);

  void error(dynamic message, [dynamic error, StackTrace? stacktrace]);

  void warning(dynamic message, [dynamic error, StackTrace? stacktrace]);

  void info(dynamic message, [dynamic error, StackTrace? stacktrace]);

  void append(dynamic message);

  void closeAppend();
}
