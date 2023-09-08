import 'package:mannapuram/dartexamples/interfaces/switchboard_listener.dart';

class HavellsAppliances implements SwitchBoardListener{

  @override
  void switchFour() {
    print("havells ac is on");
  }

  @override
  void switchOne() {
    print("havells light is on");
  }

  @override
  void switchThree() {
    print("havells fan is on");
  }

  @override
  void switchTwo() {
    print("havells bulb is on");
  }

}