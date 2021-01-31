
// Interpretation of try-catch method in dart

void main(){
  printDouble();
}

void printDouble() {
  String str = 'abc';

  try {
    double dbl = double.parse(str);
    print(dbl);
  }
  catch(e){
    print("There is an exception: $e ");
  }
}