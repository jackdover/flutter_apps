import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/LoginPage";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  var username = '';
  var password = '';
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        leading: GestureDetector(
          child: Icon(Icons.close),
          onTap: () {
            Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
          },
        ),
        actions: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 20),
            child: Text(
              "帮助",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 80,
                child: FlutterLogo(
                  size: 80,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '请输入用户名',
                  ),
                  onChanged: (value) {
                    this.setState(() {
                      username = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '请输入密码',
                    suffixIcon: GestureDetector(
                      child: Icon(Icons.remove_red_eye, color: Colors.black26),
                      onTap: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                    ),
                  ),
                  obscureText: !showPassword,
                  onChanged: (value) {
                    this.setState(() {
                      password = value;
                    });
                  },
                ),
              ),
              Container(
                height: 50.0,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
                child: RaisedButton(
                  color: Colors.red,
                  disabledColor: Color(0xFFEEB4B8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    '登录',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  //todo
                  // onPressed: (!isNullOrEmpty(username) && !isNullOrEmpty(password)) ? _handleLogin : null,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("账号密码登录"),
                  Text("新用户注册"),
                ],
              ),
              Container(
                height: 50.0,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
                child: RaisedButton(
                  color: Colors.blue,
                  disabledColor: Color(0xFFEEB4B8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    '注册',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  onPressed: () async {
                    // try {
                    //   await LoginService.register(username, password);
                    //   Fluttertoast.showToast(msg: "注册成功");
                    // } on LCException catch (error) {
                    //   Fluttertoast.showToast(msg: error.message);
                    // } catch (e) {
                    //   Fluttertoast.showToast(msg: "未知错误");
                    // }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _handleLogin() async {
    // try {
    //   await LoginService.login(username, password);
    //   Navigator.pushNamed(context, '/');
    // } on LCException catch (error) {
    //   Fluttertoast.showToast(msg: error.message);
    // } catch (e) {
    //   Fluttertoast.showToast(msg: "未知错误");
    // }
  }

  // Future<bool> isNullOrEmpty(String username) async {
  //   // SharedPreferences prefs = await SharedPreferences.getInstance();
  //   // int counter = (prefs.getInt('counter') ?? 0) + 1;
  //   // print('Pressed $counter times.');
  //   // await prefs.setInt('counter', counter);
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String username = (prefs.getString('username'));
  //
  //   return username == null;
  // }
}
