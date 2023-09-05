import 'package:mannapuram/dartexamples/SpaceCraft.dart';

 String myname ="manna";

void main(){
  myname = "puram";
  var name = 'Voyager I';  //compiler infer datatype

  Spacecraft voyager; //declaration
  voyager = Spacecraft("chandrayan",DateTime(2023,7,20));
  String lastName = "ansari";

  print("hello $lastName you are in  $name");
  enableFlags(bold: true, hidden: false);
  //enableFlags(true,false);
  enableFlags(hidden: true,bold: false);

}

void enableFlags({bool? bold, bool? hidden}) {}
