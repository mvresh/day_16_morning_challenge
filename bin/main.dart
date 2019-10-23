// Challenge 1
// Write failing tests for the next two challenges
import 'dart:math';

transposeMatrix(List<List<dynamic>> matrix) {
  List<List<dynamic>> transpose = List<List<dynamic>>();
  if(matrix.isNotEmpty){
    for (int i = 0; i < matrix[0].length; i++) {
      List newList = List();
      matrix.forEach((list) => {newList.add(list[i])});
      //print(newList);
      transpose.add(newList);
    }
  }
  return transpose;
}

List eratosthenes(int number){
  List<int> sieve = new List<int>();

  for(int i = 2;i <= number; i++){
    sieve.add(i);
  }

  for(int i = 2; i * i <= number; i++) {
    if(sieve.contains(i)) {
      for(int j = i * i; j <= number; j = j + i) {
        sieve.remove(j);
      }
    }
  }
  return sieve;
}
// Challenge 3
// Sieve of Eratosthenes
// Given N as input, return an array with all primes up to N included.
//  Examples
//  eratosthenes(10) ➞ [2, 3, 5, 7]
//  eratosthenes(20) ➞ [2, 3, 5, 7, 11, 13, 17, 19]

main() {
  print(transposeMatrix([
  [1, 1, 1],
  [2, 2, 2],
  [3, 3, 3]
    ]));

  print(transposeMatrix([
    ['a', 'b', 'c'],
    ['a', 'b', 'c'],
    ['a', 'b', 'c']
  ]));

  print(transposeMatrix([
    [1, 1],
    [2, 2],
    [3, 3]
  ]));

  print(transposeMatrix([
    [1],
    [2],
    [3]
  ]));

  print(transposeMatrix([]));


  print(eratosthenes(13));

  print(eratosthenes(-4));

  print(eratosthenes(0));


}
