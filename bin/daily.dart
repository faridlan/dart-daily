void main() {
  String name = "Faridlan";
  int age = 22;
  List<String> hobbies = ["Gaming", "Coding", "Basketball"];

  Person faridlan = Person(name: name, age: age, hobbies: hobbies);
  print(faridlan.name);
  print(faridlan.age);
  faridlan.looping();
  faridlan.bizzBuzz();

  print("----------------");
  print("----------------");

  User udin = GetUser("udin@mail.com", "rahasia");
  var email = udin.getEmail();
  var password = udin.getPassword();

  print(email);
  print(password);
}

//class abstract //constructor
abstract class Number {
  int number = 0;

  Number(this.number);

//Looping With If Condition //function
  void bizzBuzz() {
    for (var i = 0; i <= number; i++) {
      if (number == 0) {
        print("cannot input 0");
      } else if (i % 3 == 0 && i % 5 == 0) {
        print("Bizz Buzz");
      } else if (i % 3 == 0) {
        print("Bizz");
      } else if (i % 5 == 0) {
        print("Buxx");
      } else {
        print(i);
      }
    }
  }
}

//class extends //super
class Person extends Number {
  String? name;
  int? age;
  List<String>? hobbies;

  Person({this.name, this.age, this.hobbies, numberx}) : super(numberx = 0);

  void looping() {
    for (var x in hobbies!) {
      print(x);
    }
  }
}

abstract class User {
  String? email;
  String? password;

  User(this.email, this.password);

  getEmail() {}
  getPassword() {}
}

//class implements
class GetUser implements User {
  @override
  String? email;

  @override
  String? password;

  GetUser(this.email, this.password);

  @override
  String getEmail() {
    return "Your Email Is $email";
  }

  @override
  String getPassword() {
    return "Your password Is $password";
  }
}
