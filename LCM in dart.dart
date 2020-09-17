main() {
  print(lcm_of_list([2, 6, 10]));
  print(lcm_of_list([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])); // 2520)
  print(lcm_of_list([13, 6, 17, 18, 19, 20, 37])); // 27965340)
  print(lcm_of_list([44, 64, 12, 17, 65])); // 2333760)
  print(lcm_of_list([200, 30, 18, 11, 8, 64, 34])); // 2692800)
}

lcm_of_list(numbers) {
  //print(numbers);
  List BIGL = [];
  int C = 0;
  numbers.forEach((e) => C += 1);
  for (int i = 0; i < C; i++) {
    //print("${C}<><><${i}---${numbers[i]}");
    BIGL.add(primefactors(numbers[i]));
  }
  return BIGL;
}

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
}
