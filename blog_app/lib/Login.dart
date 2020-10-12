import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Home.dart';
import 'components/components.dart';
class Login extends StatelessWidget {
  String email;
  String password;
  @override

  Future<http.Response> getToken(email, password) async {
    return await http.post('http://10.0.2.2:8000/api/login?email=$email&password=$password');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Login Screen'),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  kMailIcon,
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(left: 10.0),
                    child: TextField(
                        obscureText: false,
                        textAlign: TextAlign.center,
                        decoration: kInputDecoration,
                        onChanged: (value){
                          email = value;
                        }
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kSecurityIcon,
                Container(
                  width: 300.0,
                  margin: EdgeInsets.only(left: 10.0),
                  child: TextField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: kInputDecoration,
                      onChanged: (value){
                        password = value;
                      }
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: GestureDetector(
                onTap: (){
                  getToken(email, password).then((value){
                    var token = value.body;
                    print(token);
                    var x = token.split(RegExp(r'^[0-9]+\|'));
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home(x[1])),
                    );
                  });
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
