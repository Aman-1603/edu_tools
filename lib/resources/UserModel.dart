class UserModel {
  String? email;
  String? wrool;
  String? uid;
  String? pass;
// receiving data
  UserModel({this.uid, this.email, this.wrool, this.pass});
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      wrool: map['wrool'],
      pass: map['pass']
    );
  }
// sending data
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'wrool': wrool,
      'pass' : pass,
    };
  }
}




//.then((value) => postDetailsToFirestore(email, rool)).catchError((e) {})