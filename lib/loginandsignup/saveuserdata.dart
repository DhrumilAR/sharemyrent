class UserModel {
  final String? userid;
  final String fullname;
  final String email;
  final String phoneNo;
  final String password;

  const UserModel({
      this.userid,
      required this.email,
      required this.fullname,
      required this.password,
      required this.phoneNo
    }
  );

  toJSon(){
    return{
      "FullName": fullname,
      "Email": email,
      "Mobile Number": phoneNo,
      "Password": password
    };
  }
}
