import 'dart:math';

main() {
  print(lcm_of_list([2, 6, 10]));
  print(lcm_of_list([10, 20, 40])); //10
  // print(lcm_of_list([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])); // 2520)
  // print(lcm_of_list([13, 6, 17, 18, 19, 20, 37])); // 27965340)
  // print(lcm_of_list([44, 64, 12, 17, 65])); // 2333760)
  // print(lcm_of_list([200, 30, 18, 11, 8, 64, 34])); // 2692800)
} //main

lcm_of_list(numbers) {
  List BIGL = [];
  Set MEGA = new Set();
	List uthere = [];
	List listFinal = [];
  //---------------
  var res = [];
  int C = 0;
  //-----------------
  numbers.forEach((e) => C += 1); //lenght of numbers
  for (int i = 0; i < C; i++) {
    BIGL.add(primefactors(numbers[i]));
  }
  BIGL.forEach((subL) {
    subL.forEach((elem) {
      MEGA.add(elem);
    });
  });
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
  var ALL_ONE = [MEGA,res, BIGL];// for testing
  //print(ALL_ONE);
  //-------------------------------------------------
  MEGA.forEach((element) {
    int Cnums = 0;
    BIGL.forEach((subList){
      if (subList.contains(element)){
        uthere.add(1);
      } else{
        uthere.add(0);
      }    
    });
    if (uthere.every((isOne) => isOne==1)) {
      List tempList = [];
      BIGL.forEach((miniL) {
        tempList.add(count(miniL, element));
        tempList.sort();
        Cnums = tempList.first;
        print("Before append $listFinal");
        listFinal.add(pow(element,Cnums));
        print("AFTER $listFinal");
      });
    }
    uthere=[];
   });

  // int end_multiple = 1; // this will be end result
  // res.forEach((element) {
  //   end_multiple *= element;
  // });
  //return end_multiple;
  return listFinal;
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
