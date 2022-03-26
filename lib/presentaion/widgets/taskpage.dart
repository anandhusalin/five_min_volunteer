import 'package:bloc_volunteer_service/core/colors/colors.dart';
import 'package:flutter/material.dart';

import 'chat.dart';
class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.white,

        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: primaryColor,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat()));
            },
            icon: Icon(Icons.chat,color: primaryColor,),
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Container(


          child: Column(
            children: [


              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                    color: primaryColor,
                    image: DecorationImage(

                        fit: BoxFit.fill,
                        image: AssetImage('images/Servicebnr.jpg')
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text('Painting',style: TextStyle(
                          color: Colors.black,fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                        Row(
                          children: [
                            Icon(Icons.favorite_border,color: primaryColor,),
                            SizedBox(
                              width: 10,
                            ),
                            Text('0',style: TextStyle(
                              color: Colors.black
                            ),)
                          ],
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Task one",style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 14),),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Task Two",style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 14),),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Task Three",style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 14),),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Medium ",style: TextStyle(
                              fontSize: 13,color: Colors.grey
                            ),),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Low",style: TextStyle(
                                fontSize: 13,color: Colors.grey
                            ),),
                            SizedBox(
                              height: 5,
                            ),
                            Text("High",style: TextStyle(
                                fontSize: 13,color: Colors.grey
                            ),),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(
                              height: 5,
                            ),
                            IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat()));
                            }, icon: Icon(
                              Icons.chat,color: primaryColor,
                              size: 35,
                            )),

                            SizedBox(
                              height: 5,
                            ),

                          ],
                        ),
                        SizedBox()

                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Divider(

                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Icon(Icons.lock_clock,color: primaryColor,),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('18',style: TextStyle(
                                  color: Colors.black
                                ),),
                                Text(' min',style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ],
                            )
                          ],
                        ),
                        height: 70,
                        width: 80,

                      ),
                      SizedBox(
                        height: 10,

                      ),
                      Text('Cleaning')

                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Icon(Icons.lock_clock,color:primaryColor,),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('7',style: TextStyle(
                                    color: Colors.black
                                ),),
                                Text(' min',style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ],
                            )
                          ],
                        ),
                        height: 70,
                        width: 80,

                      ),
                      SizedBox(
                        height: 10,

                      ),
                      Text('Maintenence')

                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Icon(Icons.lock_clock,color: primaryColor,),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('18',style: TextStyle(
                                    color: Colors.black
                                ),),
                                Text(' min',style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ],
                            )
                          ],
                        ),
                        height: 70,
                        width: 80,

                      ),
                      SizedBox(
                        height: 10,

                      ),
                      Text('Pumping')

                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                    'No paints to donate? why not join us for a fun and very satisfying volunteer experience? Volunteering for Global Paint is a great way to give back and get connected to your community at large. The Global Paint for Charity needs volunteers to help us with a wide range of tasks. Shifts are just 3-4 hours per day, and every minute of your time will help us build a better future for vulnerable families, their children, and communities. ',style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,

                ),),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(
                     fit: BoxFit.fill,
                     image: AssetImage('images/service4.jpg')
                   )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'No paints to donate? why not join us for a fun and very satisfying volunteer experience? Volunteering for Global Paint is a great way to give back and get connected to your community at large. The Global Paint for Charity needs volunteers to help us with a wide range of tasks. Shifts are just 3-4 hours per day, and every minute of your time will help us build a better future for vulnerable families, their children, and communities. ',style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,

                ),),
              ),
              SizedBox(
                height: 20,
              ),



            ],
          ),
        ),
      ),
    );
  }
}
