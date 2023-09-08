import 'package:mannapuram/dartexamples/interfaces/ge_appliances.dart';
import 'package:mannapuram/dartexamples/interfaces/havells_appliances.dart';
import 'package:mannapuram/dartexamples/interfaces/switchboard_listener.dart';



  void main(){
    SwitchBoardListener sbl = GEAppliances();
    //HavellsAppliances(); //wiring
    //shifa pressing the switches
    sbl.switchOne();
    sbl.switchTwo();
    sbl.switchThree();
    sbl.switchFour();
  }
