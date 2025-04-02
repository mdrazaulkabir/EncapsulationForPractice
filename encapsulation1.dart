import 'person1.dart';

void main(){
  Person1 person1=Person1(null, 23, 3.9);

  /*this two line (not possible) because now they are seperately two file 
   now if you want can should use getter or setter mathod */
  // print(person1._name);
  // person1._display1();



// get or getter funtion for get something 
  //print(person1.name);//because of get function
  //print(person1.name);
  

//set or setter funtion for update something
  //person1.setName="kabir";
  person1.setName("razaulkabir",24,4);
  print(person1.getName());


}