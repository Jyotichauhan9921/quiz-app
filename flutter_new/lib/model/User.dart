class User{

  static const tblContact = 'Contacts';
  static const colName = 'name';
  static const colMobile = 'email_phone';
  static const colPassword = 'password';

  User({this.name='Dummy', this.emailPhone,this.password});

  String name;
  String emailPhone;
  String password;

  User.fromMap(Map<String,dynamic> map){
    name = map[colName];
    emailPhone = map[colMobile];
    password = map[colMobile];
  }


  Map<String,dynamic> toMap(){
//    var map = <String,dynamic>{colName: name,colMobile: emailPhone,colPassword:password};
    var map =Map<String, dynamic>();
    map.putIfAbsent(colName, () => name);
    map.putIfAbsent(colMobile, () => emailPhone);
    map.putIfAbsent(colPassword, () => password);
    return map;
  }
}
