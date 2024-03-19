import 'package:flutter/material.dart';
import 'package:study_m8/main.dart';

const List<Map> social = [
  {'title': 'Google', 'image': 'images/google.png'},
  {'title': 'Apple', 'image': 'images/apple.png'},
  {'title': 'Facebook', 'image': 'images/fb.png'},
];

const btColor = Color(0xff3D348B);

class GetIn extends StatelessWidget {
  const GetIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('images/getIn.png'),
          const Text(
            'Let’s get you in',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(60.0, 0, 60.0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var el in social)
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 78.0,
                        width: 74.0,
                        decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(el['image']),
                            Text(
                              el['title'],
                              style: const TextStyle(
                                  color: txtColor, fontSize: 12.0),
                            )
                          ],
                        )),
                  ),
              ],
            ),
          ),
          const Text(
            'Or',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 350.0,
            height: 51.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  backgroundColor: btColor),
              child: const Text(
                'Sign in with password',
                style: TextStyle(color: txtColor, fontSize: 16.0),
              ),
            ),
          ),
          Center(
            child: RichText(
              text: const TextSpan(children: [
                TextSpan(
                    text: 'New to StudyM8? ',
                    style: TextStyle(color: Colors.black, fontSize: 16.0)),
                TextSpan(
                    text: 'Create Account',
                    style: TextStyle(
                      color: Color(0xffF35B04),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    )),
              ]),
            ),
          )
        ],
      ),
    ));
  }
}
