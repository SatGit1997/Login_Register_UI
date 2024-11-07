import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_pages_ui/page_three.dart';
import 'package:login_pages_ui/page_two.dart';

class PageOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Container(
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/login_person.jpg'),fit: BoxFit.cover
                )
            ),
          ),
          Text('Discover Your ',style: TextStyle(fontSize: 40,
              fontWeight:FontWeight.w500,color: Color(
                  0xff042fb4) ),),
          Text('Dream Job here',style: TextStyle(fontSize: 40,
              fontWeight:FontWeight.w500,color: Color(0xff042fb4) ),),
          SizedBox(height: 40,),
          Text('Explore all the existing job roles based on your'),
          Text('interest and study major'),
          SizedBox(height: 50,),

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 150,
                child: FloatingActionButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>PageTwo() ));
                },
                  child: Text('Login',
                    style: TextStyle(fontSize: 20,color: Colors.white),),
                  backgroundColor: Color(0xff042fb4),),
              ),
              SizedBox(width: 40,),
              InkWell( onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageThree()));
              },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11)
                    ),
                    child: Center(
                      child: Text('Register',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff042fb4)),),
                    )),
                  )
              ],
          )
        ],
      ),
    );
  }
}