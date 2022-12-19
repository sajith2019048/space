import 'package:flutter/material.dart';
import 'Login%20and%20OTP%20Verification/LogIn.dart';

class Intro_3 extends StatefulWidget {
  const Intro_3({Key? key}) : super(key: key);

  @override
  State<Intro_3> createState() => _Intro_3State();
}

class _Intro_3State extends State<Intro_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: new Stack(alignment: Alignment.center, children: <Widget>[
          Image.asset('D:/DOC_FA/lib/assets/intro4 1.png',
            height:  MediaQuery.of(context).size.height,
            width:  MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
          Align(
              alignment: Alignment(0.0, 0.8),
              child:Container(
                decoration: BoxDecoration(
                  color: Color(0xff000000),
                  border: Border.all(
                    color: Color(0xff000000) ,
                    width: 2.0 ,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 340,
                height: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30,left: 10),
                      child: Container(
                        height: 68,
                        width: 280,
                        child: Text(
                          'Missions to the future',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily:'Poppins',
                              color: Color(0xffFFFFFF),
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10,bottom: 10),
                      child: Container(
                        height: 76,
                        width: 290,
                        child: Text(''' It's not just the space. Fly to the moon, fly to the mars Beyond that, start journey for the space explorations''',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily:'Inter',
                              color: Color(0xffFFFFFF),
                              fontSize: 16
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child:Image.asset('D:/DOC_FA/lib/assets/dot3.png',),
                    ),
                    Padding(padding: EdgeInsets.only(top: 30),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: FlatButton(
                          height: 60,
                          minWidth: 290,
                          child: Text('Get Started', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily:'Gotham',
                              fontSize: 16.0),),
                          color: Color(0xffFFFFFF),
                          textColor: Color(0xff231F20),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Login()),
                            );//action
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ],
        ),
      ),
    );
  }
}
