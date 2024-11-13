class User{
  String username;
  String email;
  String password;

  User({this.username,this.email,this.password});   //check this.username

  Map<String,dynamic> tomap(){            //try by passing user inputs as arguments and do not declare constructor

    Map<String,dynamic> map;
    map["username"]=username;  //have taken values as variable
    map["email"]=email;
    map["password"]=password;

    return map;

  }
}