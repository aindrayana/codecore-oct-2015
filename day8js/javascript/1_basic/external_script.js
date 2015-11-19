// console.log("I'm in a separate file");
// ===============================================================
// var name = prompt("What is your name: ");
// alert('Your name is ' + name);
// var result = confirm("Are you sure " + name + "?");
// console.log(result);
// ===============================================================
// Exercise: Build a Safe
//   var password = prompt("What is the secret password");
//   if (password=="opensesame") {
//     alert("714");
//   } else {
//     alert("Wrong");
//   }
// ===============================================================
// Exercise: A friendly safe
// var enter = confirm("Do you want to enter the safe? ");
// if (enter) {
//   var password = prompt("What is the secret password");
//   if (password=="opensesame") {
//     alert("714");
//   } else {
//     alert("Wrong");
//   }
// } else {
//   alert("Goddbye!");
// }
// ===============================================================
// Exercise: Password Checker
// var password = prompt("Enter password");
// if (password.length > 12) {
//   alert("Too long!");
// } else if (password.length < 8) {
//   alert("Too short!");
// } else {
//   alert("Just Right!");
// }

// ITERATIONS - WHILE
// var i = 10;
// while (i > 5) {
//   i -= 1;
// }
// console.log(i * 2);     // result is 10

// var i = 0;
// var x = 0;
// while (i < 10) {
//   x += i;   // infinite loop
// }

// EXERCISE 1. Use a while loop to log the EVEN numbers from 0 to 100 to the console.
// var i = 0;
// while (i < 100) {
//   if (i%2==0) {
//     console.log(x);
//   }
//   i++;
// }

// EXERCISE 2. Use a while loop to implement "bottles of beer rhyme".
// var beer = 100;
// while (beer > 0) {
//   // document.write("100 bottles of beer on the wall");
//   // document.write("<br>");
//   // document.write(beer + " bottles of beer");
//   // document.write("<br>");
//   // document.write("Take one down, pass it around, " + beer + " bottles of beer on the wall");
//   // document.write("<hr>");
//
//   console.log(beer+" bottles of beer on the wall.\n"+
//     beer + " bottles of beer");
//     beer--;
//     console.log("\n Take one down, pass it around, " + beer + " bottles of beer on the wall");
// }

// Exercise: Implement the "bottles of beer rhyme" using a for loop
// for (var beer = 100; beer > 0; beer--) {
//     console.log(beer+" bottles of beer on the wall.\n"+
//       beer + " bottles of beer" +
//       "\n Take one down, pass it around, " + (beer-1) + " bottles of beer on the wall");
// }
//
// var result = 0;
// for (var i = 5; i < 10; i++) {
//   result += i;
//   if (1%3 ==0) {break;}
// }
// console.log(result);    // result is 11

// Exercise
// 1. Choose a number between 0 and 100
// 2. Prompt users to guess the number
// 3. Alert the user whether their guess is greater than or less than the number, or correct.
// 4. If their guess is wrong, repeat
//
// var rand = Math.floor(Math.random() * 100 + 1);
// console.log(rand);
// var answer = "";
// while(answer!=rand) {
//   answer = prompt("Choose a number between 0 and 100:");
//   if (answer > rand) {
//     alert("Guess is greater than the number. Try again");
//   } else if (answer < rand) {
//     alert("Guess is less than the number. Try again");
//   } else
//     alert("Your guess is correct!!");
//     break;
//   }
// }

// ARRAY example
// var names = ["Jim", "Tom", "Jason", "Brian"]
// for (var i = 0; i < names.length; i++) {
//   console.log("Hello " + names[i]);
// }

// -- Exercises
// -- 1. Create an array containing 0, 5, 6, -12, and use a loop to compute
// -- the sum of its elements.
// var arr = [0, 5, 6, -12]
// var sum = 0;
// for (var i = 0; i < arr.length; i++) {
//   sum += arr[i];
// }
//   console.log(sum);

// -- Exercises
// -- 2. Create an array containing the words "apple", "dog", "computer", "cup",
// -- use a loop to log "[Word] has [length] characters." for each word.
// arr = ["apple", "dog", "computer", "cup"];
// for (var i = 0; i < arr.length; i++) {
//   console.log(arr[i] + " has " + arr[i].length + " characters.");
// }


// FUNCTIONS EXAMPLE
// function doubleIt(x) { console.log(x * 2); }
// var doubleIt = function(x) { return x * 2}

// var greeting = function(name) {
//   return "Hello " + name;
// }

// -- Exercises
// 1. Write a function insult that takes a name, and logs an insult to
// the console (e.g. "Mitch, you dummy!")
// var insult = function(name) {
//   console.log(name + ", you dummy!");
// }

// 2. Write a function increment that takes a number and adds 1 to it.
// var increment = function(num) {
//   console.log(num++);
// }

//3. Write a function doubleArray that accepts an array of numbers and
// returns a array of those numbers doubled.
// var doubleArray = function(arr) {
//     for(var i=0; i < arr.length; i++) {
//       arr[i] = arr[i] * 2;
//     }
//     return arr;
// }
// console.log(doubleArray([1,2,3,4,5]));

// OBJECTS
// -- Exercises
// 1. Create an object "me" containing your name, age, and occupation.
// var me = {name: "Aji", age: 37, occupation: "Web Dev" };

// 2. Change your occupation to "javascript expert"
// me.occupation = "javascript expert";

// 3. Add a "skills" property containing the array ['ruby', 'rails', 'javascript']
// me.skills = ['ruby', 'rails', 'javascript'];

// 4. Add key with space
// me["other hobby"] = "fishing";

// Exercises
// 1. Write a function that takes a user object with 'name' and 'age'
// properties, and logs the string "[name] is [age] years old."
// var nameAge = function(obj) {
//   return obj.name + " is " + obj.age + " years old";
// }
// var me = {name: "Aji", age: 17};
// console.log(nameAge(me));

// 2. Write a function that takes a sentence, and returns an object
// of all the words and their lengths.
//   wordLengths("Hello world"); => { "Hello": 5,
//   "world": 5 }
var input = prompt("Input a sentence:");
input = input.split(" ");
var wordLengths = function(word) {
  var result = {}
  for(var i=0; i<word.length;i++) {
    result[word[i]] = word[i].length;
  }
  return result;
}
console.log(wordLengths(input));
