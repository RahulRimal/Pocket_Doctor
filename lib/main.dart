import 'package:flutter/material.dart';
import 'profile_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Login Page',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _isVisible = true;
  TextEditingController _username;
  TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 65.0,
                backgroundImage: NetworkImage(
                    'https://previews.123rf.com/images/anatolir/anatolir1712/anatolir171201477/91833942-man-avatar-icon-flat-illustration-of-man-avatar-vector-icon-isolated-on-white-background.jpg'),
                backgroundColor: Colors.redAccent,
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _username,
                      cursorColor: Colors.redAccent,
                      decoration: InputDecoration(
                          focusColor: Colors.redAccent,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide(
                              color: Colors.redAccent,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0)),
                          hintText: 'Email'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _password,
                      cursorColor: Colors.redAccent,
                      obscureText: _isVisible,
                      decoration: InputDecoration(
                        focusColor: Colors.redAccent,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isVisible ? Icons.visibility : Icons.visibility_off,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            setState(() {
                              _isVisible = !_isVisible;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    MaterialButton(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(color: Colors.redAccent)),
                      minWidth: double.infinity,
                      color: Colors.redAccent,
                      child: Text('Login'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) {
                                return OurApp(
                                  username: _username.text,
                                  password: _password.text,
                                );
                              }
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
