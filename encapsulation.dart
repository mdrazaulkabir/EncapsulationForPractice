// import 'dart:async';
// import 'dart:js';

void main(){

  //default private constructor in not possible in dart
  //Person person=Person(_name: "kabir",_age: 23,_gmail: "razaulkabir13579@gmail.com");

  Person person=Person("kabir", 23, "kabir@gmail.com");


//this two line is possible here (because of they in one file) 
   print("name is ${person._name} age is ${person._age} also his gmail is ${person._gmail}");
   person._display();
  
  
  

}
class Person{
  String? _name;
  int ? _age;
  String? _gmail;

  //default private constructor is not possilbe in dart 
  // Person({this._name,this._age=25,required this._gmail}){
  //   print("name is $_name age is $_age also his gmail is $_gmail");
  // }
  Person(this._name,this._age,this._gmail);
  void _display() {
     print("name is $_name age is $_age also his gmail is $_gmail");
   }
}