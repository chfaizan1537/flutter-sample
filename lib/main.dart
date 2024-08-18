import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(o());
}

class o extends StatelessWidget {
  final LinearGradient _gradient = LinearGradient(colors: [
    Colors.pink,
    Colors.yellow,
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [Colors.pink,Colors.red,Colors.yellow])
            ),
          ),
          title: Text('Food Dilivery'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ShaderMask(
                    shaderCallback: (Rect rect) {
                      return _gradient.createShader(rect);
                    },
                    child: Text('food',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      FaIcon(
                        FontAwesomeIcons.phone,
                        size: 20,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Phone Number'),
                    ],
                  ),
                  height: 60,
                  width: 330),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      FaIcon(FontAwesomeIcons.lock, size: 20),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Password'),
                      SizedBox(width: 170),
                      FaIcon(
                        FontAwesomeIcons.eyeSlash,
                        size: 20,
                      )
                    ],
                  ),
                  height: 60,
                  width: 330),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 170,
                  ),
                  TextButton(
                      onPressed: () {}, child: Text('Forget your password ?')),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.pink, Colors.red, Colors.yellow]),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign In ',
                      style: TextStyle(color: Colors.white),
                    )),
                height: 50,
                width: 350,
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Text('Didnot have account ?  '),
                  TextButton(onPressed: () {}, child: Text('Signup'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
