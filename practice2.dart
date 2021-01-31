import 'dart:io';

void main(){
  performTasks();
}


// If we require task2 Data in task3

void performTasks() {
  task1();
  task2();
  task3();
}

void task1(){

  print("Task1");
}
void task2(){

  Duration three = Duration(seconds: 3);

  //sleep(three);
  Future.delayed(three, //Asynchronous programming
          (){
        print("Task2");  //Callback Function
      });
}

void task3(){



  print("Task3");
}


