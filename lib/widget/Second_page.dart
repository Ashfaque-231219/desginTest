import 'package:designtest/widget/custom_lable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    // Add more items as needed
  ];
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: SingleChildScrollView(

            child: Column(


              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                SizedBox(height: 40,),
                Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(width: 150,),
                    CustomLabel(text: "Service",size: 18,fontWeight: FontWeight.bold,)
                  ],
                ),
                SizedBox(height: 10,),
                Row(

                  children: [
                    Icon(Icons.location_city,size: 18,),
                    CustomLabel(text: "235Km square=",size: 14,),
                    SizedBox(width: 220,),
                    Icon(Icons.edit)
                  ],
                ),
                SizedBox(height: 20,),
                CustomLabel(text: 'What kind of Service do you need?',size: 18,),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(

                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(20.0),

                      ),
                      // Additional decoration properties
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [

                      Container(
                        alignment: Alignment.center,
                        width: 120,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(18),
                        ),

                          child: CustomLabel(text: 'Physiotherepist')),
                      SizedBox(width: 30,),
                      Container(
                          alignment: Alignment.center,
                          width: 120,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(18),
                          ),

                          child: CustomLabel(text: 'Home nurse')),
                      SizedBox(height: 10,),


                    ],
                  ),
                ),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CustomLabel(text: 'Frequent'),
                ),
                SizedBox(height: 10,),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns in the grid
                    crossAxisSpacing: 10.0, // Spacing between columns
                    mainAxisSpacing: 10.0, // Spacing between rows
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedIndex = index; // Update the selected index
                        });
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color:selectedIndex == index? Colors.greenAccent:Colors.white, width: 2.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: Column(
                            children: [

                              SizedBox(height: 20,),

                              Visibility(
                                visible:selectedIndex ==index?true:false
                                ,
                                child: Padding(
                                  padding: const EdgeInsets.only(right:
                                  12),
                                  child: Align(
                                    alignment:Alignment.centerRight,
                                    child: Icon(Icons.check)),
                                ),
                              ),
                              SizedBox(height: 15,),
                              Icon(Icons.local_hospital,size: 50,),
                              SizedBox(height: 20,),
                              CustomLabel(text: "Post Surgical")

                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20,),
                CustomLabel(text: 'Explore More'),
                Container(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5, // Replace "yourList" with your actual list
                    itemBuilder: (context, index) {
                      return Container(
                        width: 210, // Set the desired width for each item
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color:Colors.white, width: 2.0),
                          ),
                          child: Column(
                            children: [
                              CustomLabel(text: 'Chat with a doctor'),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Align(

                                  alignment: Alignment.centerRight,
                                  child: Icon(Icons.chat),
                                ),
                              ),
                              SizedBox(height: 30,),


                              Align(
                                alignment: Alignment.centerLeft,
                                child: CustomLabel(
                                    text: '24*25'),
                              )

                            ],
                          )
                        ),
                      );
                    },
                  ),
                ),



              ],
            ),
          ),
        ),
      )
    );
  }
}
