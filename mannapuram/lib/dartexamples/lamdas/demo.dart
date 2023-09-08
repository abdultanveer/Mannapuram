import 'package:mannapuram/dartexamples/lamdas/printer_impl.dart';
import 'package:mannapuram/dartexamples/lamdas/printer_interface.dart';

void main(){
  //life before lamdas
  PrinterImpl printerImpl = PrinterImpl();
  printerImpl.printMessage("welcome to flutter");

  //PrinterInterface p1 = (message) => {print(message)};
 // p1.printMessage("welcome to mannapuram");

}