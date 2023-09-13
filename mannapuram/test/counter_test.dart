import 'package:mannapuram/model/dog.dart';
import 'package:mannapuram/widgets/counter.dart';
import 'package:test/test.dart';
import 'package:mannapuram/database/crud.dart';

void main(){
  group('testing dogs n counter', () {
    test('increment testing of counter', () {
      Counter counter = Counter();
      counter.increment();
      int expectation = 1;
      expect(counter.value, expectation);
    });

    test('inserting a dog', () async{
      Dog dog = Dog(id: 99, name: 'test-dog', age: 11);
      DogDao dogDao = DogDao();
      dogDao.openDb();
      Future<int> rowNo = dogDao.insertDog(dog);

      //Dog retreivedDog =
      Future<List<Dog>> dogs = dogDao.getDogs();


    });

  });
}

//insert a test_dog
//get the dog at the inserted row no
//validate if both the dogs are same