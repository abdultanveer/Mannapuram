import 'package:mannapuram/dartexamples/interfaces/switchboard_listener.dart';

class GEAppliances implements SwitchBoardListener{
  @override
  void switchFour() {
    print("GE ac is on");
  }

  @override
  void switchOne() {
    print("GE light is on");
  }

  @override
  void switchThree() {
    print("GE fan is on");
  }

  @override
  void switchTwo() {
    print("GE bulb is on");
  }
}