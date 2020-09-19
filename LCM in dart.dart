import 'dart:math';
// finding LCM - "Least(smallest) common multiple" using Dart prog.lang
// translated from https://github.com/wr3stl3r/edabit.com/blob/master/LCM%20from%20list.py
main() {
  print(lcm_of_list([2, 6, 10]));
  print(lcm_of_list([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])); // 2520)
  print(lcm_of_list([13, 6, 17, 18, 19, 20, 37])); // 27965340)
  print(lcm_of_list([44, 64, 12, 17, 65])); // 2333760)
  print(lcm_of_list([200, 30, 18, 11, 8, 64, 34])); // 2692800)
} //main

lcm_of_list(numbers) {
  //print(numbers);
  List BIGL = [];
  Set MEGA = new Set();
  var res = [];
  int C = 0;
  // print();
  numbers.forEach((e) => C += 1);
  for (int i = 0; i < C; i++) {
    //print("${C}<><><${i}---${numbers[i]}");
    BIGL.add(primefactors(numbers[i]));
  }
  BIGL.forEach((subL) {
    subL.forEach((elem) {
      MEGA.add(elem);
    });
  });
  //return MEGA;
  //[2,2,2,3,3,3], [2,3,3]
  MEGA.forEach((cipars) {
    var tempo = [];
    BIGL.forEach((subL) {
      if (subL.isEmpty == false) {
        tempo.add(count(subL, cipars));
      }
    });
    //print(tempo);
    tempo.sort();
    res.add(pow(cipars,tempo.last));
    tempo = [];
  });
  //var ALL_ONE = [MEGA,res, BIGL]; for testing
  int end_multiple = 1; // this will be end result
  res.forEach((element) {
    end_multiple *= element;
  });
  return end_multiple;
} //--LCM of list

//-------------------------------------
count(X, element) {
  //counter
  if (X.isEmpty || X == null) {
    return 0;
  }
  int C = 0;
  for (var i = 0; i < X.length; i++) {
    if (X[i] == element) {
      C++;
    }
  }
  return C;
} //counter

//--------------------
primefactors(X) {
  int D = 2;
  List<int> L = [];
  while (X > 1) {
    //print("${L},${D},X=${X}");
    if (X % D == 0) {
      L.add(D);
      X = X / D;
    } else {
      D = D + 1;
    } // else
  } // while
  return L; // return from primefactors()
} //prime factors
