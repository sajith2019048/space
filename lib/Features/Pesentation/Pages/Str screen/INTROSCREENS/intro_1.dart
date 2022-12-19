import 'package:flutter/material.dart';

import 'intro_2.dart';
import 'intro_3.dart';
class Intro_1 extends StatefulWidget {
  const Intro_1({Key? key}) : super(key: key);

  @override
  State<Intro_1> createState() => _Intro_1State();
}

class _Intro_1State extends State<Intro_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: new Stack(alignment: Alignment.center, children: <Widget>[
            Image.asset('D:/DOC_FA/lib/assets/Intro Screen 1.png',
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
                            'Rockets and Capsules',
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
                          child: Text(' The  journey  of  the  reusable ' +
                              ' rockets  and  the  innovativeness  discoveries'+
                              ' results  the  Falcon  rockets  and  Dragon'+
                              ' capsules. ',
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
                        child:Image.asset('D:/DOC_FA/lib/assets/dot1.png',),
                      ),
                      Padding(padding: EdgeInsets.only(top: 30),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Intro_3()),
                                  );
                                  //action
                                },
                                child: Text(
                                  'Skip', //title
                                  textAlign: TextAlign.end, //aligment
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily:'Inter',
                                      color: Color(0xffFFFFFF),
                                      fontSize: 16
                                  ),
                                ),
                              ),),
                              Container(child:FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Intro_2()),
                                  );
                                },
                                child: Image.asset('D:/DOC_FA/lib/assets/click.png',
                                  height: 62,
                                  width: 62,
                                ),
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ],
          ),
        ),
    );
  }
}
