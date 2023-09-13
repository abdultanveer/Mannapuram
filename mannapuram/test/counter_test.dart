import 'package:mannapuram/widgets/counter.dart';
import 'package:test/test.dart';

void main(){
  test('increment testing of counter', () {
    Counter counter = Counter();
    counter.increment();
    int expectation = 10;
    expect(counter.value, expectation);
  }
  );
}