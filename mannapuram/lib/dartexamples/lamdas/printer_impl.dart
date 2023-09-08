import 'package:mannapuram/dartexamples/lamdas/printer_interface.dart';

class PrinterImpl implements PrinterInterface{
  @override
  void printMessage(String message) {
    print(message);
  }

}