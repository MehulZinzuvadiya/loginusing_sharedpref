import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefDemo {
  void createPref(String email, String pass) async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    spref.setString('e1', email);
    spref.setString('p1', pass);
  }
  Future<Map> readPref()async{
    SharedPreferences sPref= await SharedPreferences.getInstance();
    String? email=sPref.getString('e1');
    String? pass=sPref.getString('p1');
    Map m1={"e1":email,"p1":pass};
    return m1;
  }
}
