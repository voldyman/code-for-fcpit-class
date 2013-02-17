/*
    this program explains inheritance,
    when the child object is instantiated the parent comes in to existance first.

    the child class has the option of overriding the parents functions but can still call
    them if it wishes.

    Author: Akshay Shekher <voldyman666@gmail.com>
*/

class Parent {
    private string doodle;

    public Parent () {
        doodle = "Parent's doodle";
        print ("Parent constructed\n");
    }

    public void print_doodle () {
        print (this.doodle+"\n");
    }
}

class Child : Parent {
    private string doodle;

    public Child () {
        doodle = "Child's doodle";
        print ("Child constructed\n");
    }

    public new void print_doodle () {
        print (this.doodle+"\n");
    }

    public void print_doodle_with_parent () {
        base.print_doodle ();
        print (this.doodle+"\n");
    }

}

void main () {
    print ("Constructing the child object.\n->\n");
    var child = new Child ();
    print ("<-\nChild construction complete.\n\n");
    print ("child.print_doodle ()\n->\n");
    child.print_doodle ();
    print ("<-\nchild.print_doodle complete.\n\n");
    print ("child.print_doodle_with_parent.\n->\n");
    child.print_doodle_with_parent ();
    print ("<-\nchild.print_doodle_with_parent complete.\n");
}
