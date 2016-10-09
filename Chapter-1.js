(a = ((b) * (2)));

/*expression and a statement created
two is a literal value, b is an identifier/variable, a is a variable 
right side is the source and left side is the target; creates an assignment statement*/

((a) = ((b) * (2)) + ((foo)(((c) * (3))))
a = b * 2 + foo(c * 3);
a = b * (2 + foo(c * 3));
a = (b * 2) + foo(c * 3);


/*set the variable a to the value 2 - high high level
a = 2 - high level
mov2,2 - low level
100010011 - lowest level

javascript gets compiled for error checking */


a = a + 2;
a += 2;

42;
"42";

"42"[0] //"4";
"abc"[1]; // b

a = 42;

console.log(a);

a = 42;
a/=42;

a = String(a);
console.log(a);


a = 42
b = (a /= 2);

b = Number(b);
 console.log(b);


a = 42;
a /= 2;
a = a + ""; //a plus an empty string; string concatunation instead of math. Makes this statemnt into a string using String(a)
console.log(a);

const a = 42; // make a variable that can't be changed later

// Add comments to your code; Explain WHY things are there. Sometimes HOW but never WHAT.

/* Use this
to add
more comment lines
*/

a = 42; // hasn't been formally declared; a bad idea in your code.

var a; // formally declare your variables
a = 42; 

function a() {}; // another way to formlly delcare a variable

// This is not a loop, the if statement is only checked and run once

var a;
var foo;

a = 100;
if (a > 10) {
	foo = (a + 5);
}

console.log(foo);

// a block is a pairing of statements that get run together

{
		var a = 42;
		foo(a/2);
}

var a = 42;
var foo;

if ( a > 10) {
	a = 10;
	foo = (a/2);
}

console.log(foo);

// conditional statements

var a = 10;

if (a > 5) {
	a = a * 2;
}


/*falsy values
0 -0 NaN "" false null undefined
*/

var a = 25;

if (a) { // conditional decision based on whether it's true or false
	a = a * 2;
}

console.log(a);

void // everything you give void is undefined including zero



