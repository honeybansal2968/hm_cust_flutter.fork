import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hm_cust_flutter/widgets/common/drawer.dart';
import '../../../getx/getxController.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int bottomindex = 0;


  final HomeController controller = Get.put(HomeController()); // Instantiate the controller



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: AppDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.red.shade400,
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,


          title: Text("Helpy Moto"),
        ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [

                Container(
                  height: 50,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(

                      children: [



                        ActionChip(label: Text("Got stuck hire a mechanic now"),onPressed: () {

                        },),
                        SizedBox(width: 15,),
                        ActionChip(backgroundColor: Colors.blue.shade100,label: Text("Got drunk don't worry hire a driver now"),onPressed: () {

                        },),




                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(

                      children: [



                        ActionChip(backgroundColor: Colors.amber.shade100,label: Text("Need to go long drive don't worry clean your vehicle now"),onPressed: () {

                        },),
                        SizedBox(width: 15,),
                        ActionChip(label: Text("Got drunk don't worry hire a driver now"),onPressed: () {

                        },),




                      ],
                    ),
                  ),
                ),





                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    width: double.maxFinite,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.yellow.shade100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [


                        Text("Image Space"),
                        Text("Text Space"),

                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30))),
                                elevation: MaterialStatePropertyAll(8),
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.red.shade400)),
                            onPressed: () {

                            },
                            child: Text("Click me"))
                      ],
                    ),
                  ),
                ),


                Align(
                    alignment: Alignment.centerLeft,

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Service Provider",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),

                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(

                      children: [


                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          height: 100,
                          width: 150,
                          child: Center(child: Text("Mechanic"
                            ,style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold,
                          ),
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          height: 100,
                          width: 150,
                          child: Center(child: Text("Cleaner"
                            ,style: TextStyle(
                              fontSize: 20,fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          height: 100,
                          width: 150,
                          child: Center(child: Text("Driver"
                            ,style: TextStyle(
                              fontSize: 20,fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),





                      ],
                    ),
                  ),
                ),

                Align(
                    alignment: Alignment.centerLeft,

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Types of Services",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),

                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(

                      children: [


                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          height: 100,
                          width: 200,
                          child: Center(child: Text("Ontime service"
                            ,style: TextStyle(
                              fontSize: 20,fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          height: 100,
                          width: 200,
                          child: Center(child: Text("Schedule Service"
                            ,style: TextStyle(
                              fontSize: 20,fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),





                      ],
                    ),
                  ),
                ),




                Align(
                    alignment: Alignment.centerLeft,

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "SOS service",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(

                      children: [


                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          height: 100,
                          width: 150,
                          child: Center(child: Text("Call to ambulance")),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          height: 100,
                          width: 150,
                          child: Center(child: Text("Call to nearby police station",textAlign: TextAlign.center,)),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          height: 100,
                          width: 150,
                          child: Center(child: Text("Require Towing service",textAlign: TextAlign.center)),
                        ),





                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),


              ],
            ),
          ),
        ),
      ),
      bottomSheet: BottomNavigationBar(

        selectedIconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Colors.green.shade50,
        currentIndex: bottomindex,
        onTap: (value) {
          setState(() {
            bottomindex = value;
          });
        },
        selectedItemColor: Colors.red.shade500,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Image.asset('assets/images/home-page.png',
                  fit: BoxFit.cover, height: 35, width: 40)),
          BottomNavigationBarItem(
              label: "TAB 2",
              icon: Image.asset('assets/icons/Car inspectors.png',
                  fit: BoxFit.fill, height: 35, width: 40)),
          BottomNavigationBarItem(
              label: "TAB 3",
              icon: Image.asset('assets/icons/Detailing.png',
                  fit: BoxFit.fill, height: 35, width: 40)),
          BottomNavigationBarItem(
              label: "TAB 4", icon: Icon(Icons.account_box_rounded)),
          BottomNavigationBarItem(
              label: "TAB 5", icon: Icon(Icons.account_box_rounded)),
        ],
      ),    );
  }
}