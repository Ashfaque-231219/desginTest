import 'package:designtest/widget/Second_page.dart';
import 'package:designtest/widget/custom_lable.dart';
import 'package:designtest/widget/custom_raised_button.dart';
import 'package:designtest/widget/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController _mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            SizedBox(height: 150,),
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.health_and_safety,size: 50,color: Colors.greenAccent)),
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.center
              ,child: CustomLabel(text: 'Divine Solution',size: 20,color: Colors.black,fontWeight: FontWeight.bold,),
            ),
            SizedBox(height: 5,),
            Align(
              alignment: Alignment.center
              ,child: CustomLabel(text: 'Post Hospitalization Care',size: 15,color: Colors.black,),

            ),
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft
                ,child: CustomLabel(text: 'Help there!',size: 18,color: Colors.black,fontWeight: FontWeight.bold,),

              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 18),

              child: Align(
                alignment: Alignment.centerLeft
                ,child: CustomLabel(text: 'Help us to find the right care taker for your health care!',size: 15,color: Colors.black,),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),

              child: Align(
                alignment: Alignment.centerLeft
                ,child: CustomLabel(text: ' for your health care!',size: 15,color: Colors.black,),

              ),
            ),
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: CustomTextField(validator: (String? value) {  }, onTextChanged: _mobileController,
                hintText: '+01',


              ),
            ),
            SizedBox(height: 200,),
            // CustomRaisedButton(text: '', color: color, onpressed: onpressed)
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: Align(
                alignment: Alignment.bottomCenter,

                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 220,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(18),

                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomLabel(text: 'Get Started',color: Colors.white,fontWeight: FontWeight.bold,),
                      Icon(Icons.arrow_forward,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
