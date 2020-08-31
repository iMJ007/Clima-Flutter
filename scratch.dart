import 'dart:io';

void main() {
  performTasks();
}

void performTasks()  async {
  task1();
  String task2results = await task2();
  task3(task2results);
}

Future<String> task2() async {
  String results;
  await Future.delayed(Duration(seconds: 3), (){
    results = 'task 2 data';
    print('Task 2 complete');
  });
  return results;
}

void task1()  {
  String result = 'task 1 data';
  print('Task 1 complete');
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete $task2Data');
}