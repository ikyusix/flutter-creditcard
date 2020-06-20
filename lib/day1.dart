
// ======================================CLASS FUNCTION

void main() async{ // return sebuah future akan mnjadi asynchronus
//   functionA();
//   functionB();
//   functionC();

  await functionA();
  await functionB();
  await functionC();

}

Future functionA(){
  return Future.delayed(Duration(seconds: 3), ()=>print('A'));
}
Future functionB(){
  return Future.delayed(Duration(seconds: 1), ()=>print('B'));
}
Future functionC(){
  return Future.delayed(Duration(seconds: 2), ()=>print('C'));
}

// ======================================


// ======================================CLASS FUNCTION
// void main(){

//   var saitama = Hero(name:"SAITAMA",hp:999,damage:999);
//   print(saitama.toMap());
//   var balanar = TankerHero("BALANAR", 900, 800); // cek class ny, kalau ada {} harus d tulis jga attribute ny
//   print(balanar.toMap());
// }

// class TankerHero extends Hero{
//   TankerHero(name, hp ,damage):super(name:name, hp:hp+10000, damage:damage); // mirip kotlin, super ny d simpen d pinggir konstruktor
// }

// class Hero{
//   final String name;
//   final double hp;
//   final double damage;

//   Hero({this.name, this.hp, this.damage});

//   getDamage(){
//     return this.damage;
//   }

//   toMap(){
//     return {
//       'name': this.name,
//       'hp': this.hp,
//       'damage': this.damage
//     };
//   }
// }


// void main(){

//   var saitama = Hero(name:"SAITAMA",hp:999,damage:999);
//   saitama._damage=100000;
//   print(saitama._damage);
// //   var genos = Hero("GENOS", 999, 999);
// //   saitama.name = "SAITAMA";
// //   saitama.hp = 999;
// //   saitama.damage = 999;

// //   print(saitama.toString());
//   print(saitama.toMap());
// //   print(anotherHero.toMap());

// //   anotherHero.hp=998;
// //   print(saitama.toMap());
// //   print(anotherHero.toMap());
// }

// class Hero{
//   String name;
//   double hp;
//   double _damage;
// //   double _damage; // damage ny d private

//   Hero({name, hp, damage}){
//     this.name = name;
//     this.hp = hp;
//     this._damage = damage;
//   }

//   getDamage(){
//     return this._damage;
//   }

//   toMap(){
//     return {
//       'name': this.name,
//       'hp': this.hp,
//       'damage': this._damage
//     };
//   }
// }
// ======================================


// ###############################################################################################################################


// ======================================SWITCH CASE
// void main(){
//   var hour = 13;
//   switch(hour){
//     case 12:
//       print('Its 12');
//       break;
//     case 13:
//       print('Its 13');
//       continue anotherCase;

//       anotherCase:
//     case 15:
//       print('Its 14');
//       break;
//     default:
//       print('Its something else');
//   }
// }
// ======================================

// ======================================ARRAY FUNC TWO
// void main(){
//   var a=3.0; // d anggap ny int dan 3
// //   var a=3.5; // d anggap ny double
//   print(a is int);
// //   arrayFunc();
// }

// arrayFunc(){
//   var myList = ["Bima", "Adam", "Nugraha", "Luna", "Adam"]; // list udh jls jls boleh duplicate, tp knp ngmbil indeks yg pertama
// //   var myList = [1,2,3,4,5,6,7];
// //   var myNewList = myList.map((item)=>item+1);
// //   myList.forEach((item){
// //     item=item-1; // {item=item-1;} tidak mngembalikan nilai, (item) cmn mau pakai aja
// //   });

// //   var oddList = myList.where((element)=>(element%2==1));
//   var aPeople = myList.where((element)=>element.startsWith("A")).toString();

//   print(myList);
//   print(aPeople);
//   print(myList.elementAt(3));
//   print(myList.indexOf("Adam")); // ngambil indeks yang pertama
// //   print(oddList);
// //   print(myNewList);
// }
// ======================================



// ======================================DEFAULT VALUE COMBINATION DUA
// void main(){
//   print(sum(a:1));
// }

// sum({int a, int b, int c=3}){
//   b?.floor(); // ? kalau nilai ny nul tdk d kerjakan. nul safety. udh ada isiny blm? kalau ada, gue panggil floor ny
//   return '$a $b $c';
// }
// ======================================


// ======================================DEFAULT VALUE
// void main(){
//   print(sum(3,4));
// }

// sum(int a, int b, {int c=3}){ //c=3 itu default value
//   return '$a $b $c';
// }
// ======================================


// ======================================IMPORTANT
// void main(){
//   // optional name parameter

// //   print(sum(7,3));
//   print(sum(b:3, a:4));
// }

// sum({int a, int b}){
// //   return a+b;
//   return '$a $b';
// }
// ======================================


// ======================================MAPS FUNCTION DUA
// void main(){
//   myFunction("Bima");
// }

// var myFunction=(name)=> print('Hello $name');

// Map mapsFunctionDua(){
//   var people = {
//     "Bima" : 17,
//     18 : "Adam"
//   };
//   print(people['Bima']);
//   print(people[18]);
//   return people;
// }
// ======================================

// ======================================
// void main(){
//   print(mapsFunctionDua());
// }

// Map mapsFunctionDua(){
//   var people = {
//     "Bima" : 17,
//     18 : "Adam"
//   };
//   print(people['Bima']);
//   print(people[18]);
//   return people;
// }
// ======================================


// emojiFunction(){
//   var hi = 'Hi \u2665'; // unicode emoji format
//   print(hi);
// }

// void main(){
//   dynamic generation;
// //   dynamic generation = 3;
//   print("John the $generation'rd");
//   generation = "bims";
//   generation.
//   print("John the $generation'rd");

// }

// void main(){

// //   final String name = "Bima adam nugraha";
//   const String name = "Bima adam nugraha";

// // const variables can't be assigned a value
// // final can only be set once
//   name = "bima";
//   print(name);

// }

// void main(){
//   int a = 7;
//   int b = 2;
//   var c = a/b; // langsung invert type
//   print(c);
// }

// mapsFunction(){

//   // maps is always contains key and value
//   var people = {
//     "Bima" : 17,
//     18 : "Adam"
//   };
//   print(people['Bima']);
//   print(people[18]);
// }

// sets(){

// //   var plannets = ['Mercury', 'Venus', 'Earth'];
// //   var plannets = <dynamic>{};
//   var plannets = <String>{};
//   plannets.add('venus');
//   plannets.add('Earth');
//   print(plannets);

// // //   var plannets = ['Mercury', 'Venus', 'Earth'];
// //   var plannets = {'Mercury', 'Venus', 'Earth'};
// //   // square brackets doesn't have index
// // //   var plannets = {'Bima', 'Bima'}; // distinc into one element
// //   print(plannets[2]);
// }

// nullPointerException(){
//     var words = ""; // ini bakal true karena yang d tanya isEmpty dari sesuatu yg tidak ada
//   print(words.isEmpty);
//     var words; // ini bakal null
//   print(words.isEmpty);
// }

// stringMultyLine(){
//   // tetap nyambung
//   var words = "You fail"
//     "to amuse me ...";
//   print(words);
// }

// parsingDataType(){
//   var one = "1";
//   var result = 1+int.parse(one);
// //   var one = "1.5";
// //   var result = 1+double.parse(one);
//   print(result);
// }

// // void main(){
// arrayFunction(){
//   // numbers dalam DART itu hnya int dan double saja
//   final numbers = [3,4,7,"BIMA"]; // final ga bsa rubah element satu set
// //   const numbers = [3,4,7,"BIMA"]; // kalau const tdk bisa d resign, sdh tdk bsa d apa apa in
// //   var numbers = [3,4,7,"BIMA"];
//   print(numbers[3]);
//   numbers[3] = "ADAM";
//   print(numbers[3]);
// //   numbers[3] = "NUGRAHA";
// //   print(numbers[3]);

// set tdk puny indeks, atau tdk memiliki element yg sma
// harus d buat penampung, cek immutability functional programming

//   var mylist = [1,2,3,4,5,6,7];
//   mylist.add(8);
//   print(mylist);

//   var mylist = [1,2,3,4,5,6,7];
// //   var newlist = [mylist, 8,9,10]; // ini cara yang kurang tepat. gunakan spread operator
//   // kalau ga pakai spread operator, d kasus ini indeks k 0 ny akan array lg atau biasa yg d sebut array 2D
//   var newlist = [0,...mylist,8,9,10];
//   print(newlist.length);

//   for(var x in newlist) print(x);
// }