
void print_r (string x, int n) {
	if (n == 0)
		return;
	print (x);
	print_r (x,--n);
}

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

void main (string[] args) {
//	row (int.parse (args[1]), int.parse (args[2]))
	print ("\r");;
	row (1, int.parse (args[1]));
	print ("\r");
	stdout.flush ();
	stdout.getc ();
	print ("done");
}
