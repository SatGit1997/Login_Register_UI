import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_pages_ui/page_two.dart';

class PageThree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text('Create Account',
              style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),),
            SizedBox(height: 30,),
            Text('Create an account so you can explore all the',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 13
              ),),
            Text(
                'existing jobs',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 13
            )),
            SizedBox(height: 50,),
            TextField(
              decoration: InputDecoration(
                  label: Text('Email'),
                  hintText: 'Enter a valid email here',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                          color: Colors.green,
                          width: 2
                      )
                  )
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                  label: Text('Password'),
                  hintText: 'Enter 8 Digit password here',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                          color: Colors.green,
                          width: 2
                      )
                  )
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                  label: Text('Confirm Password'),
                  hintText: 'Enter again',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                          color: Colors.green,
                          width: 2
                      )
                  )
              ),
            ),
            SizedBox(height: 20,),

            SizedBox(height: 30,),
            SizedBox(width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageThree() ));
              },
                child: Text('Sign in',style: TextStyle(fontSize: 20,color: Colors.white),
                ),style: ElevatedButton.styleFrom(
                  backgroundColor: CupertinoColors.systemBlue,


                ),),
            ),
            SizedBox(height: 40,),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PageTwo()));
            },
              child: Text('Already have an account',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  color: Colors.blue
                ),),
            ),
            SizedBox(height: 60,),
            Text('Or continue with',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,color: Colors.blue
              ),),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.red,
                          width: 1)
                  ),
                  child: Icon(Icons.g_mobiledata,size: 35, color: Colors.red,),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue.shade700,
                          width: 1)
                  ),
                  child: Icon(Icons.facebook_outlined,color: Colors.blue.shade800,),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black.withOpacity(0.7))
                  ),
                  child: Icon(Icons.apple,color: Colors.black.withOpacity(0.6),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}