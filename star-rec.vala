/*
	This program simply prints out
	*
	**
	***
	the number of rows depends on the parameter you give it.
	./valac 3
	will print 3 rows.

	Author: Akshay Shekher<voldyman666@gmail.com>
*/

//Prints a string 'x', 'n' times
void print_r (string x, int n) {
	if (n == 0)
		return;
	print (x);
	print_r (x,--n);
}

//used to print rows in range ('a','b')
void row (int a, int b) {
	print_r ("*", a);
	print ("\n");

	if (a == b)
		return;

	if (a < b)
		row (++a, b);
	else
		row (--a, b);
}

//Main Func.
void main (string[] args) {
//	row (int.parse (args[1]), int.parse (args[2]))
	row (1, int.parse (args[1]));
	stdout.getc ();
}
