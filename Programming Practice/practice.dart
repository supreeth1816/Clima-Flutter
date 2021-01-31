import 'dart:io';

void main(){
  performTasks();
}

//Asynchronous programming when task3 is dependant on task 2 result

//async modifier
void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1(){

  print("Task1");
}
Future<String> task2() async {
  //Task 2 takes 3 Seconds to execute
  Duration three = Duration(seconds: 3);
  //sleep(three);
  String result;
  await Future.delayed(three, //Asynchronous programming
       () {
        result = "Supreeth";//Callback Function
         print("Task2 Complete");
  });
  return result;
}

void task3(String result){
  print("Task3 and $result");
}


