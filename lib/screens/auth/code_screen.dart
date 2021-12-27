import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_app/component/default_button.dart';
import 'package:mobile_app/screens/auth/email_screen.dart';

import '../../constants.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  _CodeScreenState createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
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
                'A code has been sent to\n +91 8606722845',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 10,
                ),
                DefaultItemCode(text: '6'),
                DefaultItemCode(text: '7'),
                DefaultItemCode(text: '2'),
                DefaultItemCode(text: '4'),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Send another code',
                textAlign: TextAlign.center,
                style: TextStyle(color: kPrimaryColor, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            InkWell(
              focusColor:Colors.deepPurple ,
              radius: 100,
              borderRadius: BorderRadius.circular(50),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) =>EmailScreen()));
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
                  'Next',
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

  Widget DefaultItemCode({
    required String text,
  }) {
    return Container(
      width: 50,
      height: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
      ),
    );
  }
}
