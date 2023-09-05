class Student{
  static String COLLEGE_NAME = "IIT";
  String? name;
  int? age;
  int? phno;

}
void main(){
  var myStudent = Student();
  myStudent.name = "ansari";
  print(Student.COLLEGE_NAME);
}