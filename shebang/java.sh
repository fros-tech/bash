//usr/bin/jshell --execution local "$0" "$@"; exit $?
// A simple JShell script

class Person {
  private String name="";
  private String address="";

  Person(String name, String address)
  {
    this.name = name;
    this.address = address;
  }

  public String getName()
  {
    return this.name;
  }

  public void setName(String name)
  {
    this.name = name;
  }
} 

Person p = new Person("Frank", "Nordfeldparken");

System.out.println("The Persons name is" + p.getName());
System.out.println();
System.out.println("Fear not! You can use your valuable Java skills");
System.out.println("in Linux scripts also. Java rocks!!!!!!!!!!!!!!");

/exit
