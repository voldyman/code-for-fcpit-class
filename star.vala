/*
    This Program prints
    *
    **
    ***
    the numbe of rows depends on the argument given.

    valac star.vala
    Author: Akshay Shekher<voldyman666@gmail.com>
*/

void main (string[] args) {
    int number_of_rows = int.parse (args[1]);

    for (int i=0; i < number_of_rows; i++) {
        for (int j=0; j <= i; j++)
            print ("*");
        print ("\n");
    }
}
