import 'dart:math';

List<int> GL = [];
var L = GL.length;
var howBig =3;

void mymom() {
  // makes list from i to 100*
  for (int i = 0; i <= howBig *100; i = i + howBig) {
    GL.add(i);
  }
}

void main() {
  mymom();
  print("Hello the length of GL lit is ${L}");
  for (int i = 0; i < L; i++) {
    print('hello ${2 * i} slut ${GL[i]}\n'.toUpperCase()); //pow(2,i)
  }
}
