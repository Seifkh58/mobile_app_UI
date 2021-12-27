import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_app/component/default_button.dart';
import 'package:mobile_app/screens/auth/phone_number_screen.dart';

import '../../../constants.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({Key? key}) : super(key: key);

  @override
  _SplashContentState createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              color: kPrimaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Tracking',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/placeholder(1).png',
                    ),
                    Positioned(
                      top: 15,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: Image.asset(
                          'assets/images/profile.jpg',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 3,
                  height: 15,
                  color: kSecondaryColor,
                ),
                CircleAvatar(
                  backgroundColor: kSecondaryColor,
                  radius: 15,
                )
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
      InkWell(
        focusColor:Colors.deepPurple ,
        radius: 100,
        borderRadius: BorderRadius.circular(50),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_) =>PhoneNoScreen()));
        },
        child: Container(
          width: double.infinity,
          height: 55,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kPrimaryColor,
          ),
          child: Text(
            'Start Tracking',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
        ],
      ),
    );
  }
}
