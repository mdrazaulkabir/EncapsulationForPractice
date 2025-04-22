class Person1{
  String? _name;
  int? _age;
  double? _cgp;
  Person1(this._name,this._age,this._cgp);
 
/////get:
 //here 3 process is right 

 //process1;
 //get name=>_name;

 //process 2:
 //String? get name=>_name;

//  process3:                                   //more useable
 //String get name=>_name ?? "unknow";          // ?? means is if null then will be "unknow"
 //get name=>"your name is $_name age is $_age also cgp is $_cgp";    //vvi this process



//here also 3 process is 
/*
//process 1:
you can't return like this way ,,,because you can only one value can return this way 
  String? getName(){
   return _name;
   return -_age;
   return _cgp;
  }
 */

//process 2:
 String getName() {
  return "Name: ${_name ?? "Unknown"}, Age: ${_age ?? 0}, CGP: ${_cgp ?? 0.0}";
}

//process3:
 //get getName=> "Name is $_name age is $_age also cgp is $_cgp";




/* //////set:
this is not possible in dart for set
set setName(String name, int age, double cgp) => _name=name, _age=age, _cgp=cgp;
*/
// here 2 process

//process 1:   
// // Individual setters (optional) individual another set all value
//   set setName(String name) => _name = name;
//   set setAge(int age) => _age = age;
//   set setCgp(double cgp) => _cgp = cgp;

//process2:                                               //more useable
//Method to set all values at once (it's is useable )     //accept because you can set multiple value

 setName(String name, int age, double cgp){ 
    // _name=name;
    // _age=age;
    // _cgp=cgp;

    //this are very standart
    this._name=name;
    this._age=age;
    this._cgp=cgp;
  }

}