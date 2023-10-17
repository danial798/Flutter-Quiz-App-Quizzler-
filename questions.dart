// Creating a Class called Questions in a separate dart file which has an un-assigned question and answer variable
// First , A class is created , then a Object is created , the the objects are used later
// Classes are the Blueprint , Objects are the Implementation
// Class has properties / variables
// Methods are functions of a Class

/*
  //Class E.g 1 :
class Car{
  int no_of_doors = 5;
  // Method / Function E.g : 1
  void drive(){
    print('Wheels start turning');
  }
}

  // Class E.g 2 :
class Human{
  int height = 15;
  int age = 23;

  // Method / Function E.g : 2
  void talk (var what_to_say)
  {
    print(what_to_say);
  }

  // Constructor E.g : 1
  Human (int starting_height){
    height = starting_height;
  }
}
 */
class Question {
  var question;
  var answer;
  // Creating a Constructor which has two new variables q & a which are assigned to previous variables
  // Constructor E.g : 2
  Question({var q , var a})
  {
    question = q;
    answer = a;
}
}