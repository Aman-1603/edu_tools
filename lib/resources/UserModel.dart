class UserModel {
  String? studentname;
  String? email;
  String? wrool;
  String? uid;
  String? pass;
  String? sem;
// receiving data
  UserModel({this.uid, this.studentname,this.email, this.wrool, this.pass, this.sem});
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
        studentname: map['studentname'],
      email: map['email'],
      wrool: map['wrool'],
      pass: map['pass'],
        sem: map['sem']

    );
  }
// sending data
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'studentname' : studentname,
      'email': email,
      'wrool': wrool,
      'pass' : pass,
      'sem' : sem,

    };
  }
}




//.then((value) => postDetailsToFirestore(email, rool)).catchError((e) {})