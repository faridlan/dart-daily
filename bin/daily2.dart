void main() {
  Connection newCon = Connection();
  UserRepository userRepository = UserRepository(newCon);

  User faridlan = User();
  // faridlan.name = "Faridlan";
  faridlan.email = "faridlan@mail.com";
  faridlan.password = "secret";
  faridlan.firstName = "Faridlan";
  // faridlan.lastname = "Nul Hakim";
  faridlan.age = 22;
  faridlan.address = ["jl.leuwidahu", "jl. Mitra Batik"];

  var user = userRepository.getUser(faridlan);

  checkPrint(user.name);
  checkPrint(user.email);
  checkPrint(user.password);
  checkPrint(user.firstName);
  checkPrint(user.lastname);
  checkPrint(user.age);
  checkPrint(user.address);

  for (var x in user.address!) {
    print(x);
  }
}

void checkPrint(params) {
  print(params);
  print(params.runtimeType);
}

class Connection {
  final String connection = "Create new Connection";
}

class Profile {
  String? firstName;
  String lastname = "";
  int? age;
  List<String>? address;
}

class User extends Profile {
  String? name;
  String? email;
  String? password;
}

abstract class Repository {
  User getUser(User user);
}

class UserRepository implements Repository {
  Connection con;
  UserRepository(this.con);

  @override
  User getUser(User user) {
    User userx = User();
    userx.name = user.name;
    userx.email = user.email;
    userx.password = user.password;
    userx.firstName = user.firstName;
    userx.lastname = user.lastname;
    userx.age = user.age;
    userx.address = user.address;

    return userx;
  }
}
