 import "package:logger/logger.dart";

  class LoggerCustom{
  static Logger logger = Logger(
    filter: null,
    printer: PrettyPrinter(),
    output: null
  );
  // log error !
   static void error(String msg)
  {
    logger.e(msg);
  }
  // log debug !
   static void debug(String msg)
  {
    logger.d(msg);
  }
  // log info !
   static void info(String msg)
  {
    logger.i(msg);
  }
  // log warning !
   static void warning(String msg)
  {
    logger.w(msg);
  }
 }