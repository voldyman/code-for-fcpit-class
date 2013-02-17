/*
    Enter an integer and it will be converted to a
    character (according to the ASCII converntion)
    {http://www.asciitable.com/}

    Author: Akshay Shekher<voldyman666@gmail.com>
*/
void main (string[] args) {
    print ("Enter a number: ");
    string str = stdin.read_line () ?? "";
    int str_in_int = int.parse (str);
    print ("It translate to '%c' in ASCII\n".printf (str_in_int));
}
