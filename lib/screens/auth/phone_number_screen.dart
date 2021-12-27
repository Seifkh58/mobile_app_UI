import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_app/component/default_button.dart';
import 'package:mobile_app/screens/auth/code_screen.dart';

import '../../constants.dart';

class PhoneNoScreen extends StatefulWidget {
  const PhoneNoScreen({Key? key}) : super(key: key);

  @override
  _PhoneNoScreenState createState() => _PhoneNoScreenState();
}

class _PhoneNoScreenState extends State<PhoneNoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Text(
                'Enter your phone number',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: '+91',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 100,
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '8606722845',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'By counting , i confirm i have',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'read the',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  ' Privacy Policy',
                  style: TextStyle(
                    color: HexColor('#4248BF'),
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 120,
            ),
            InkWell(
              focusColor:Colors.deepPurple ,
              radius: 100,
              borderRadius: BorderRadius.circular(50),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) =>CodeScreen()));
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
                  'Accept & Continue',
                  style: TextStyle(
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
