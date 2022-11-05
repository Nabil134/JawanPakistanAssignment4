import 'dart:io';

void main() {
  /*
  1. Consider the code:
List nameList = [Bilal, Bilal, Bilal, Owais, Owais, Owais];
What can to be done in order to not repeat Bilal and Owais multiple times?

  */
  List nameList = [
    'Bilal',
    'Bilal',
    'Bilal',
    'Owais',
    'Owais',
    'Owais'
  ]; //Consider the given List
  var norepeated_nameList = nameList
      .toSet()
      .toList(); //then convert the given List to Set  to get unique values then again convert to List
  print(norepeated_nameList); //print the norepeated_nameList

/*
OutPut:
[Bilal, Owais]
*/
/*
2. Let’s say you are given a list saved in a variable:
Consider a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
Write a code that takes this list and makes a new list that has only the even elements of this list in it.

*/

  List a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]; //Consider the given List
  List even_no = []; //Consider the empty List
  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      even_no.add(a[i]);
    }
  }
  print(even_no); //print the even_no list
  /*
  OutPut:
  [4, 16, 36, 64, 100]
  */

  /*
  3. Write a program to print multiplication table of 7 length 15 using loop.
  */
  var no = 7; //inilialize the variable with value 7
  for (int i = 1; i <= 15; i++) {
    print('$no * $i = ${no * i}'); //print the table of 7 7 length 15 using loop
  }
  /*
  OutPut:
  7 * 1 = 7
7 * 2 = 14
7 * 3 = 21
7 * 4 = 28
7 * 5 = 35
7 * 6 = 42
7 * 7 = 49
7 * 8 = 56
7 * 9 = 63
7 * 10 = 70
7 * 11 = 77
7 * 12 = 84
7 * 13 = 91
7 * 14 = 98
7 * 15 = 105
  */
  /*
  4. Write a program to print items of the following array using for loop:
fruits = [“apple”, “banana”, “mango”, “orange”, “strawberry”].

  */
  List fruits = [
    "apple",
    "banana",
    "mango",
    "orange",
    "strawberry"
  ]; //Consider the given List
  for (int i = 0; i < fruits.length; i++) {
    //print items of the fruits list items
    print(fruits[i]); //print the fruits List items
  }
  /*
  OutPut:
  apple
banana
mango
orange
strawberry
  */
  /*
  5. Write a program to print multiples of 5 ranging 1 to 100.
  */
  for (int i = 1; i <= 100; i++) {
    //multiples of 5 ranging 1 to 100.
    if (i % 5 == 0) {
      print(i); //print the result
    }
  }
  /*
  OutPut:
5
10
15
20
25
30
35
40
45
50
55
60
65
70
75
80
85
90
95
100
  */
  /*
  6. The Temperature Converter: It’s hot out! Let’s make a converter based on the steps here.
a. Store a Celsius temperature into a variable.
b. Convert it to Fahrenheit & output “NNoC is NNoF”.
c. Now store a Fahrenheit temperature into a variable.
d. Convert it to Celsius & output “NNoF is NNoC”.
Note: NN = any number
  */
  num celsius = 95; //Store a Celsius temperature into a variable
  num farhenheitToCelsius =
      (celsius * (9 / 5)) + 32; //convert Celsius to Fahrenheit
  print(
      '${celsius}oC is ${farhenheitToCelsius}oF'); //print the result “NNoC is NNoF”
  num farhenheit = 212; //store a Fahrenheit temperature into a variable.
  num celsiusToFarhenheit =
      ((farhenheit - 32) * 5) / 9; //convert Fahrenheit to Celsius
  print(
      '${farhenheit}oF is ${celsiusToFarhenheit}oC'); //print the result “NNoF is NNoC”
  /*
  OutPut:
  95oC is 203.0oF
212oF is 100.0oC
  */
  /*
  8. Write a program to create a calculator for +, -, *, / & % using if
statements. Take the following input:
a. First number Second number
b. Operation (+, -, *, /, %)
Compute & show the calculated result to user.
  */
  print('a. First Number');
  print(' Second Number');
  print('b. Operation(+,-,*,/,%)');
  var first_num = int.parse((stdin.readLineSync())!);
  var second_num = int.parse((stdin.readLineSync())!);
  var oper = stdin.readLineSync();
  var result;

  if (oper == '+') {
    result = first_num + second_num;
    print('Addition of First Number and Second Number:$result');
  } else if (oper == '-') {
    if (first_num > second_num) {
      result = first_num - second_num;
    } else {
      result = second_num - first_num;
    }
    print('Subtraction of First Number and Second Number:$result');
  } else if (oper == '*') {
    result = first_num * second_num;
    print('Multiplication of First Number and Second Number:$result');
  } else if (oper == '/') {
    result = first_num / second_num;
    print('Division of First Number and Second Number:$result');
  } else if (oper == '%') {
    result = first_num % second_num;
    print('Modulus of First Number and Second Number:$result');
  }
  /*
  OutPut:
  a. First Number
 Second Number
b. Operation(+,-,*,/,%)
2
5
+
Addition of First Number and Second Number:7
  */
  /*
  9. Write a program that takes a character (I. e. string of length 1) and
returns true if it is a vowel, false otherwise.
  */
  print('Enter a characher:');
  String? ch = stdin.readLineSync(); // input a character from the user

  ch = ch
      ?.toLowerCase(); //convert the user input into toLowerCase() function to convert the user input into lowercase
  if ((ch == 'a') || (ch == 'e') || (ch == 'i') || (ch == 'o') || (ch == 'u')) {
    //if user input is equal to 'a' 'e' 'i' 'o' 'u' then print true
    print('true');
  } else {
    //if user input not equal to 'a' 'e' 'i' 'o' 'u' then print false
    print('false');
  }
  /*
  OutPut:
  Enter a characher:
N
false
  */
  /*
  10. Write a program to reverse a string. For example, if my string is
"natsikaP nawaJ" then my result will be "Jawan Pakistan".
  */
  String name = "natsikaP nawaJ"; //Consider the given String
  String reversed_name =
      name.toLowerCase(); //convert the given String into LowerCase
  reversed_name = reversed_name
      .split("")
      .reversed
      .join(); //convert the given String to reversed()
  print(reversed_name); //print the result
  /*
  OutPut:
  jawan pakistan
  */
  /*
  12. List numList = [1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 29, 30, 31, 32, 33, 35, 36, 37, 38, 39, 40, 41, 42, 45, 46, 48, 49, 50, 51, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 66, 67, 68, 69, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 92, 93, 94, 95, 96, 98, 99, 100];
Find the missing number in array of 1 to 100?
  */
  List missing = [];
  int i = 0;
  int j = 0;
  final numList = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    29,
    30,
    31,
    32,
    33,
    35,
    36,
    37,
    38,
    39,
    40,
    41,
    42,
    45,
    46,
    48,
    49,
    50,
    51,
    53,
    54,
    55,
    56,
    57,
    58,
    59,
    60,
    61,
    62,
    63,
    64,
    66,
    67,
    68,
    69,
    71,
    72,
    73,
    74,
    75,
    76,
    77,
    78,
    79,
    80,
    81,
    82,
    83,
    84,
    85,
    86,
    87,
    88,
    89,
    90,
    92,
    93,
    94,
    95,
    96,
    98,
    99,
    100
  ];
  for (int count = 0; count < 100; count++) {
    if (i < numList.length) {
      if ((j + 1) != numList[i]) {
        missing.add(j + 1);
        j++;
      }
      j++;
      i++;
    }
  }
  print("Misssing Number : $missing");
  /*
  13. List<int> unsortedList = [65, 34, 43, 44, 28, 70, 47, 52, 8, 11];
Find the largest and smallest number in an unsorted integer array?
  */
  List unsortedList = [
    65,
    34,
    43,
    44,
    28,
    70,
    47,
    52,
    8,
    11
  ]; //Consider the given List
  unsortedList
      .sort(); //using the sort() function to arrange the values in ascending order
  List sortedList = unsortedList; //assign the unsortedList to sortedList
  print(
      'Greatest number:${sortedList.last}'); //last method to get the greatest number
  print(
      'Smallest number:${sortedList.first}'); //first method to get the Smallest number
  /*
  OutPut:
  Greatest number:70
Smallest number:8
  */

/*
14. Let, int number = 18;
Find all pairs of an integer array whose sum is equal to a given number?
*/
  List pair = [];
  int number = 18;
  for (int i = 0; i <= number; i++) {
    for (int j = 0; j <= number; j++) {
      if ((i + j) == 18) {
        pair.add([i, j]);
      }
    }
  }
  print(pair);
  /*
  OutPut:
  [[0, 18], [1, 17], [2, 16], [3, 15], [4, 14], [5, 13], [6, 12], [7, 11], [8, 10], [9, 9], [10, 8], [11, 7], [12, 6], [13, 5], [14, 4], [15, 3], [16, 2], [17, 1], [18, 0]]
*/
/*
15. Create a Marks sheet using loop with given data also add 5 Subjects in root directory.
*/
  List marksheet = [
    {
      "id": 1,
      "name": "Leanne Graham",
      "username": "Bret",
      "email": "Sincere@april.biz",
      "address": {
        "street": "Kulas Light",
        "suite": "Apt. 556",
        "city": "Gwenborough",
        "zipcode": "92998-3874",
        "geo": {"lat": "-37.3159", "lng": "81.1496"}
      },
      "phone": "1-770-736-8031 x56442",
      "website": "hildegard.org",
      "company": {
        "name": "Romaguera-Crona",
        "catchPhrase": "Multi-layered client-server neural-net",
        "bs": "harness real-time e-markets"
      }
    },
    {
      "id": 2,
      "name": "Ervin Howell",
      "username": "Antonette",
      "email": "Shanna@melissa.tv",
      "address": {
        "street": "Victor Plains",
        "suite": "Suite 879",
        "city": "Wisokyburgh",
        "zipcode": "90566-7771",
        "geo": {"lat": "-43.9509", "lng": "-34.4618"}
      },
      "phone": "010-692-6593 x09125",
      "website": "anastasia.net",
      "company": {
        "name": "Deckow-Crist",
        "catchPhrase": "Proactive didactic contingency",
        "bs": "synergize scalable supply-chains"
      }
    },
    {
      "id": 3,
      "name": "Clementine Bauch",
      "username": "Samantha",
      "email": "Nathan@yesenia.net",
      "address": {
        "street": "Douglas Extension",
        "suite": "Suite 847",
        "city": "McKenziehaven",
        "zipcode": "59590-4157",
        "geo": {"lat": "-68.6102", "lng": "-47.0653"}
      },
      "phone": "1-463-123-4447",
      "website": "ramiro.info",
      "company": {
        "name": "Romaguera-Jacobson",
        "catchPhrase": "Face to face bifurcated interface",
        "bs": "e-enable strategic applications"
      }
    },
    {
      "id": 4,
      "name": "Patricia Lebsack",
      "username": "Karianne",
      "email": "Julianne.OConner@kory.org",
      "address": {
        "street": "Hoeger Mall",
        "suite": "Apt. 692",
        "city": "South Elvis",
        "zipcode": "53919-4257",
        "geo": {"lat": "29.4572", "lng": "-164.2990"}
      },
      "phone": "493-170-9623 x156",
      "website": "kale.biz",
      "company": {
        "name": "Robel-Corkery",
        "catchPhrase": "Multi-tiered zero tolerance productivity",
        "bs": "transition cutting-edge web services"
      }
    },
    {
      "id": 5,
      "name": "Chelsey Dietrich",
      "username": "Kamren",
      "email": "Lucio_Hettinger@annie.ca",
      "address": {
        "street": "Skiles Walks",
        "suite": "Suite 351",
        "city": "Roscoeview",
        "zipcode": "33263",
        "geo": {"lat": "-31.8129", "lng": "62.5342"}
      },
      "phone": "(254)954-1289",
      "website": "demarco.info",
      "company": {
        "name": "Keebler LLC",
        "catchPhrase": "User-centric fault-tolerant solution",
        "bs": "revolutionize end-to-end systems"
      }
    },
    {
      "id": 6,
      "name": "Mrs. Dennis Schulist",
      "username": "Leopoldo_Corkery",
      "email": "Karley_Dach@jasper.info",
      "address": {
        "street": "Norberto Crossing",
        "suite": "Apt. 950",
        "city": "South Christy",
        "zipcode": "23505-1337",
        "geo": {"lat": "-71.4197", "lng": "71.7478"}
      },
      "phone": "1-477-935-8478 x6430",
      "website": "ola.org",
      "company": {
        "name": "Considine-Lockman",
        "catchPhrase": "Synchronised bottom-line interface",
        "bs": "e-enable innovative applications"
      }
    },
    {
      "id": 7,
      "name": "Kurtis Weissnat",
      "username": "Elwyn.Skiles",
      "email": "Telly.Hoeger@billy.biz",
      "address": {
        "street": "Rex Trail",
        "suite": "Suite 280",
        "city": "Howemouth",
        "zipcode": "58804-1099",
        "geo": {"lat": "24.8918", "lng": "21.8984"}
      },
      "phone": "210.067.6132",
      "website": "elvis.io",
      "company": {
        "name": "Johns Group",
        "catchPhrase": "Configurable multimedia task-force",
        "bs": "generate enterprise e-tailers"
      }
    },
    {
      "id": 8,
      "name": "Nicholas Runolfsdottir V",
      "username": "Maxime_Nienow",
      "email": "Sherwood@rosamond.me",
      "address": {
        "street": "Ellsworth Summit",
        "suite": "Suite 729",
        "city": "Aliyaview",
        "zipcode": "45169",
        "geo": {"lat": "-14.3990", "lng": "-120.7677"}
      },
      "phone": "586.493.6943 x140",
      "website": "jacynthe.com",
      "company": {
        "name": "Abernathy Group",
        "catchPhrase": "Implemented secondary concept",
        "bs": "e-enable extensible e-tailers"
      }
    },
    {
      "id": 9,
      "name": "Glenna Reichert",
      "username": "Delphine",
      "email": "Chaim_McDermott@dana.io",
      "address": {
        "street": "Dayna Park",
        "suite": "Suite 449",
        "city": "Bartholomebury",
        "zipcode": "76495-3109",
        "geo": {"lat": "24.6463", "lng": "-168.8889"}
      },
      "phone": "(775)976-6794 x41206",
      "website": "conrad.com",
      "company": {
        "name": "Yost and Sons",
        "catchPhrase": "Switchable contextually-based project",
        "bs": "aggregate real-time technologies"
      }
    },
    {
      "id": 10,
      "name": "Clementina DuBuque",
      "username": "Moriah.Stanton",
      "email": "Rey.Padberg@karina.biz",
      "address": {
        "street": "Kattie Turnpike",
        "suite": "Suite 198",
        "city": "Lebsackbury",
        "zipcode": "31428-2261",
        "geo": {"lat": "-38.2386", "lng": "57.2232"}
      },
      "phone": "024-648-3804",
      "website": "ambrose.net",
      "company": {
        "name": "Hoeger LLC",
        "catchPhrase": "Centralized empowering task-force",
        "bs": "target end-to-end models"
      }
    }
  ];
  print(
      '---------------------------------------------------------------------');
  print('                                    MarkSheet              ');
  print(
      '---------------------------------------------------------------------');

  List subject = [
    [77, 88, 90, 80, 88],
    [77, 88, 99, 89, 90],
    [77, 60, 70, 80, 90],
    [77, 88, 66, 77, 88],
    [77, 88, 77, 89, 90],
    [77, 88, 88, 55, 89],
    [77, 88, 88, 86, 98],
    [77, 88, 88, 78, 90],
    [77, 88, 88, 78, 90],
    [77, 88, 88, 78, 90],
  ];
  for (int i = 0; i < marksheet.length; i++) {
    marksheet[i]['Subject'] = subject[i];
  }
  var total;
  var per;
  for (int i = 0; i < marksheet.length; i++) {
    print('                          Student ID: ${marksheet[i]['id']}');
    print('                           Student Name: ${marksheet[i]['name']}');
    print(
        '                           Student Username: ${marksheet[i]['username']}');
    print('                           Student Email: ${marksheet[i]['email']}');
    print(
        '                           Student Address: ${marksheet[i]['address']['suite']}, ${marksheet[i]['address']['street']},${marksheet[i]['address']['city']}');

    print(
        '                           Student ZipCode: ${marksheet[i]['address']['zipcode']}');
    print(
        '                           Student Phone Number: ${marksheet[i]['phone']}');

    print(
        '                           Student Website: ${marksheet[i]['website']}');
    print(
        '---------------------------------------------------------------------');
    print('                              Student Company Info: ');
    print(
        '---------------------------------------------------------------------');
    print(
        '                           Student Conpany Name: ${marksheet[i]['company']['name']}');
    print(
        '                           Student Conpany CatchPhrase: ${marksheet[i]['company']['catchPhrase']}');
    print(
        '                           Student Conpany BS: ${marksheet[i]['company']['bs']}');
    print(
        '---------------------------------------------------------------------');
    print(
        '---------------------------------------------------------------------');
    print('                              Student GeoLocation: ');
    print(
        '---------------------------------------------------------------------');
    print(
        '                           Latitude: ${marksheet[i]['address']['geo']['lat']}');
    print(
        '                           Longitude: ${marksheet[i]['address']['geo']['lng']}');
    print(
        '---------------------------------------------------------------------');

    print('                           English: ${marksheet[i]['Subject'][0]}');
    print('                           Urdu: ${marksheet[i]['Subject'][1]}');
    print('                           Maths: ${marksheet[i]['Subject'][2]}');
    print('                           Physics: ${marksheet[i]['Subject'][3]}');
    print(
        '                           Chemistry: ${marksheet[i]['Subject'][4]}');
    total = marksheet[i]['Subject'][0] +
        marksheet[i]['Subject'][1] +
        marksheet[i]['Subject'][2] +
        marksheet[i]['Subject'][3] +
        marksheet[i]['Subject'][4];
    per = (total / 500) * 100;
    print(
        '---------------------------------------------------------------------');
    print('                           Total :$total');
    print(
        '---------------------------------------------------------------------');
    print(
        '---------------------------------------------------------------------');
    print('                           Percentage:$per');
    print(
        '---------------------------------------------------------------------');
    if (per >= 90) {
      print(
          '---------------------------------------------------------------------');
      print('                           Grade A');
      print(
          '---------------------------------------------------------------------');
    } else if (per >= 80) {
      print(
          '---------------------------------------------------------------------');
      print('                           Grade B');
      print(
          '---------------------------------------------------------------------');
    } else if (per >= 70) {
      print(
          '---------------------------------------------------------------------');
      print('                           Grade C');
      print(
          '---------------------------------------------------------------------');
    } else if (per >= 60) {
      print(
          '---------------------------------------------------------------------');
      print('                           Grade D');
      print(
          '---------------------------------------------------------------------');
    } else if (per >= 50) {
      print(
          '---------------------------------------------------------------------');
      print('                           Grade E');
      print(
          '---------------------------------------------------------------------');
    } else if (per >= 40) {
      print(
          '---------------------------------------------------------------------');
      print('                           Grade F');
      print(
          '---------------------------------------------------------------------');
    }
  }
  /*
  OutPut:
  ---------------------------------------------------------------------
                                    MarkSheet
---------------------------------------------------------------------
                          Student ID: 1
                           Student Name: Leanne Graham
                           Student Username: Bret
                           Student Email: Sincere@april.biz
                           Student Address: Apt. 556, Kulas Light,Gwenborough
                           Student ZipCode: 92998-3874
                           Student Phone Number: 1-770-736-8031 x56442
                           Student Website: hildegard.org
---------------------------------------------------------------------
                              Student Company Info:
---------------------------------------------------------------------
                           Student Conpany Name: Romaguera-Crona
                           Student Conpany CatchPhrase: Multi-layered client-server neural-net
                           Student Conpany BS: harness real-time e-markets
---------------------------------------------------------------------
---------------------------------------------------------------------
                              Student GeoLocation:
---------------------------------------------------------------------
                           Latitude: -37.3159
                           Longitude: 81.1496
---------------------------------------------------------------------
                           English: 77
                           Urdu: 88
                           Maths: 90
                           Physics: 80
                           Chemistry: 88
---------------------------------------------------------------------
                           Total :423
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Percentage:84.6
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Grade B
---------------------------------------------------------------------
                          Student ID: 2
                           Student Name: Ervin Howell
                           Student Username: Antonette
                           Student Email: Shanna@melissa.tv
                           Student Address: Suite 879, Victor Plains,Wisokyburgh
                           Student ZipCode: 90566-7771
                           Student Phone Number: 010-692-6593 x09125
                           Student Website: anastasia.net
---------------------------------------------------------------------
                              Student Company Info:
---------------------------------------------------------------------
                           Student Conpany Name: Deckow-Crist
                           Student Conpany CatchPhrase: Proactive didactic contingency
                           Student Conpany BS: synergize scalable supply-chains
---------------------------------------------------------------------
---------------------------------------------------------------------
                              Student GeoLocation:
---------------------------------------------------------------------
                           Latitude: -43.9509
                           Longitude: -34.4618
---------------------------------------------------------------------
                           English: 77
                           Urdu: 88
                           Maths: 99
                           Physics: 89
                           Chemistry: 90
---------------------------------------------------------------------
                           Total :443
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Percentage:88.6
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Grade B
---------------------------------------------------------------------
                          Student ID: 3
                           Student Name: Clementine Bauch
                           Student Username: Samantha
                           Student Email: Nathan@yesenia.net
                           Student Address: Suite 847, Douglas Extension,McKenziehaven
                           Student ZipCode: 59590-4157
                           Student Phone Number: 1-463-123-4447
                           Student Website: ramiro.info
---------------------------------------------------------------------
                              Student Company Info:
---------------------------------------------------------------------
                           Student Conpany Name: Romaguera-Jacobson
                           Student Conpany CatchPhrase: Face to face bifurcated interface
                           Student Conpany BS: e-enable strategic applications
---------------------------------------------------------------------
---------------------------------------------------------------------
                              Student GeoLocation:
---------------------------------------------------------------------
                           Latitude: -68.6102
                           Longitude: -47.0653
---------------------------------------------------------------------
                           English: 77
                           Urdu: 60
                           Maths: 70
                           Physics: 80
                           Chemistry: 90
---------------------------------------------------------------------
                           Total :377
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Percentage:75.4
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Grade C
---------------------------------------------------------------------
                          Student ID: 4
                           Student Name: Patricia Lebsack
                           Student Username: Karianne
                           Student Email: Julianne.OConner@kory.org
                           Student Address: Apt. 692, Hoeger Mall,South Elvis
                           Student ZipCode: 53919-4257
                           Student Phone Number: 493-170-9623 x156
                           Student Website: kale.biz
---------------------------------------------------------------------
                              Student Company Info:
---------------------------------------------------------------------
                           Student Conpany Name: Robel-Corkery
                           Student Conpany CatchPhrase: Multi-tiered zero tolerance productivity
                           Student Conpany BS: transition cutting-edge web services
---------------------------------------------------------------------
---------------------------------------------------------------------
                              Student GeoLocation:
---------------------------------------------------------------------
                           Latitude: 29.4572
                           Longitude: -164.2990
---------------------------------------------------------------------
                           English: 77
                           Urdu: 88
                           Maths: 66
                           Physics: 77
                           Chemistry: 88
---------------------------------------------------------------------
                           Total :396
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Percentage:79.2
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Grade C
---------------------------------------------------------------------
                          Student ID: 5
                           Student Name: Chelsey Dietrich
                           Student Username: Kamren
                           Student Email: Lucio_Hettinger@annie.ca
                           Student Address: Suite 351, Skiles Walks,Roscoeview
                           Student ZipCode: 33263
                           Student Phone Number: (254)954-1289
                           Student Website: demarco.info
---------------------------------------------------------------------
                              Student Company Info:
---------------------------------------------------------------------
                           Student Conpany Name: Keebler LLC
                           Student Conpany CatchPhrase: User-centric fault-tolerant solution
                           Student Conpany BS: revolutionize end-to-end systems
---------------------------------------------------------------------
---------------------------------------------------------------------
                              Student GeoLocation:
---------------------------------------------------------------------
                           Latitude: -31.8129
                           Longitude: 62.5342
---------------------------------------------------------------------
                           English: 77
                           Urdu: 88
                           Maths: 77
                           Physics: 89
                           Chemistry: 90
---------------------------------------------------------------------
                           Total :421
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Percentage:84.2
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Grade B
---------------------------------------------------------------------
                          Student ID: 6
                           Student Name: Mrs. Dennis Schulist
                           Student Username: Leopoldo_Corkery
                           Student Email: Karley_Dach@jasper.info
                           Student Address: Apt. 950, Norberto Crossing,South Christy
                           Student ZipCode: 23505-1337
                           Student Phone Number: 1-477-935-8478 x6430
                           Student Website: ola.org
---------------------------------------------------------------------
                              Student Company Info:
---------------------------------------------------------------------
                           Student Conpany Name: Considine-Lockman
                           Student Conpany CatchPhrase: Synchronised bottom-line interface
                           Student Conpany BS: e-enable innovative applications
---------------------------------------------------------------------
---------------------------------------------------------------------
                              Student GeoLocation:
---------------------------------------------------------------------
                           Latitude: -71.4197
                           Longitude: 71.7478
---------------------------------------------------------------------
                           English: 77
                           Urdu: 88
                           Maths: 88
                           Physics: 55
                           Chemistry: 89
---------------------------------------------------------------------
                           Total :397
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Percentage:79.4
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Grade C
---------------------------------------------------------------------
                          Student ID: 7
                           Student Name: Kurtis Weissnat
                           Student Username: Elwyn.Skiles
                           Student Email: Telly.Hoeger@billy.biz
                           Student Address: Suite 280, Rex Trail,Howemouth
                           Student ZipCode: 58804-1099
                           Student Phone Number: 210.067.6132
                           Student Website: elvis.io
---------------------------------------------------------------------
                              Student Company Info:
---------------------------------------------------------------------
                           Student Conpany Name: Johns Group
                           Student Conpany CatchPhrase: Configurable multimedia task-force
                           Student Conpany BS: generate enterprise e-tailers
---------------------------------------------------------------------
---------------------------------------------------------------------
                              Student GeoLocation:
---------------------------------------------------------------------
                           Latitude: 24.8918
                           Longitude: 21.8984
---------------------------------------------------------------------
                           English: 77
                           Urdu: 88
                           Maths: 88
                           Physics: 86
                           Chemistry: 98
---------------------------------------------------------------------
                           Total :437
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Percentage:87.4
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Grade B
---------------------------------------------------------------------
                          Student ID: 8
                           Student Name: Nicholas Runolfsdottir V
                           Student Username: Maxime_Nienow
                           Student Email: Sherwood@rosamond.me
                           Student Address: Suite 729, Ellsworth Summit,Aliyaview
                           Student ZipCode: 45169
                           Student Phone Number: 586.493.6943 x140
                           Student Website: jacynthe.com
---------------------------------------------------------------------
                              Student Company Info:
---------------------------------------------------------------------
                           Student Conpany Name: Abernathy Group
                           Student Conpany CatchPhrase: Implemented secondary concept
                           Student Conpany BS: e-enable extensible e-tailers
---------------------------------------------------------------------
---------------------------------------------------------------------
                              Student GeoLocation:
---------------------------------------------------------------------
                           Latitude: -14.3990
                           Longitude: -120.7677
---------------------------------------------------------------------
                           English: 77
                           Urdu: 88
                           Maths: 88
                           Physics: 78
                           Chemistry: 90
---------------------------------------------------------------------
                           Total :421
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Percentage:84.2
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Grade B
---------------------------------------------------------------------
                          Student ID: 9
                           Student Name: Glenna Reichert
                           Student Username: Delphine
                           Student Email: Chaim_McDermott@dana.io
                           Student Address: Suite 449, Dayna Park,Bartholomebury
                           Student ZipCode: 76495-3109
                           Student Phone Number: (775)976-6794 x41206
                           Student Website: conrad.com
---------------------------------------------------------------------
                              Student Company Info:
---------------------------------------------------------------------
                           Student Conpany Name: Yost and Sons
                           Student Conpany CatchPhrase: Switchable contextually-based project
                           Student Conpany BS: aggregate real-time technologies
---------------------------------------------------------------------
---------------------------------------------------------------------
                              Student GeoLocation:
---------------------------------------------------------------------
                           Latitude: 24.6463
                           Longitude: -168.8889
---------------------------------------------------------------------
                           English: 77
                           Urdu: 88
                           Maths: 88
                           Physics: 78
                           Chemistry: 90
---------------------------------------------------------------------
                           Total :421
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Percentage:84.2
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Grade B
---------------------------------------------------------------------
                          Student ID: 10
                           Student Name: Clementina DuBuque
                           Student Username: Moriah.Stanton
                           Student Email: Rey.Padberg@karina.biz
                           Student Address: Suite 198, Kattie Turnpike,Lebsackbury
                           Student ZipCode: 31428-2261
                           Student Phone Number: 024-648-3804
                           Student Website: ambrose.net
---------------------------------------------------------------------
                              Student Company Info:
---------------------------------------------------------------------
                           Student Conpany Name: Hoeger LLC
                           Student Conpany CatchPhrase: Centralized empowering task-force
                           Student Conpany BS: target end-to-end models
---------------------------------------------------------------------
---------------------------------------------------------------------
                              Student GeoLocation:
---------------------------------------------------------------------
                           Latitude: -38.2386
                           Longitude: 57.2232
---------------------------------------------------------------------
                           English: 77
                           Urdu: 88
                           Maths: 88
                           Physics: 78
                           Chemistry: 90
---------------------------------------------------------------------
                           Total :421
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Percentage:84.2
---------------------------------------------------------------------
---------------------------------------------------------------------
                           Grade B
---------------------------------------------------------------------
  */
}
