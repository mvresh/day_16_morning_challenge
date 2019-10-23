import "package:test/test.dart";
import 'main.dart';

void main() {
  test("test 1", () {

    expect(transposeMatrix([[1,2,3],[4,5,6],[7,8,9],]), equals([[1,4,7],[2,5,8],[3,6,9]]));
  });

  test("test 1", () {

    expect(transposeMatrix([
      ['a', 'b', 'c'],
      ['a', 'b', 'c'],
      ['a', 'b', 'c']
    ]), equals([['a', 'a', 'a'], ['b', 'b', 'b'], ['c', 'c', 'c']]));
  });

  test("test 2", () {

    expect(eratosthenes(10), equals([2, 3, 5, 7]));
  });

  test("test 3", () {

    expect(eratosthenes(-1), equals([]));
  });

  test("test 4", () {

    expect(eratosthenes(1), equals([]));
  });


//  test('test 3', () {
//    try {
//      eratosthenes(-9);
//    } on ArgumentError catch(e) {
//      expect(e.message, 'invalid input');
//      return;
//    }
//  });
}