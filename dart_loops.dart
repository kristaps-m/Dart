import 'dart:math';

List<int> GL = [];
var L = GL.length;
var howBig =3;
String S = "abcdefghijklmnoprstuvz";
int RI = Random().nextInt(S.length);


void mymom() {
  // makes list from i to 100*
  for (int i = 0; i <= howBig *10; i = i + howBig) {
    GL.add(i);
  }
}

void main() {
  mymom();
  print("Hello the length of GL lit is ${L}");
  print("I am trying to print letter from string: " + S[RI]);
  //print(RI);
  for (int i = 0; i < L; i++) {
    print('hello ${2 * i} slut ${GL[i]}, ${Random().nextInt(10000)}'.toUpperCase()); //pow(2,i)
    //print(Random().nextInt(10000));
  }
}
