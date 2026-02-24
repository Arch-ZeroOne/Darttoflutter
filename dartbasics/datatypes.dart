/*
Strongly Typed Language : Variable that is known at compile time
For Example: (C++,Java,Swift)

Dynamic Typed Language: The type of a variable is known at run time

For example: Python, Ruby,Javascript
 */

main() {
  /*
    Basic Data Types in Dart

    int
    double
    String
    bool 
    dynamic
   */

  int amount1 = 100;
  var amount2 = 200;

  double dAmount1 = 100.1;
  var damount2 = 100.1;

  String name1 = "Windyl";
  var name2 = "Jellian";

  bool isTrue = false;
  var isTrue2 = false;
  isTrue2 = true;

  //dynamic -> The value can be modified

  dynamic weakVariable = 100;

  weakVariable = "Windyl";
}
