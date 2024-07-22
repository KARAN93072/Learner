import 'package:flutter/widgets.dart';
import 'package:http/http.dart';

class LoginProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void setLoading(value) {
    _isLoading = value;
    notifyListeners();
  }

  setLogin(String email, String pass) async {
    setLoading(true);
    try {
      Response response = await post(Uri.parse("https://reqres.in/api/login"),
          body: {"email": "eve.holt@reqres.in", "password": "cityslicka"});
      if (response.statusCode == 200) {
        setLoading(false);
        print("Successfull");
      } else {
        setLoading(false);
        print("Failed");
      }
    } catch (e) {
      setLoading(false);
    }
  }
}
