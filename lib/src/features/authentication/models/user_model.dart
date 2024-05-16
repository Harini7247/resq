class UserModel{
  final String? id;
  final String fullName;
  final String email;
  final String password;
  final String phoneNo;

  const UserModel({
    this.id,
    required this.email,
    required this.fullName,
    required this.password,
    required this.phoneNo,
  });

  toJson(){
    return {
      "Full Name":fullName,
      "Email":email,
      "Password":password,
      "Phone Number":phoneNo,
    };
  }
}