import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(const MaterialApp(
    home: Dashboard(),
    debugShowCheckedModeBanner: false,
  ));
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        //   color: Colors.white,
        // ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),

        child: SalomonBottomBar(

          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text("Home"),
              selectedColor: Colors.black,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.wallet),
              title: Text("Wallet"),
              selectedColor: Colors.black,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.stacked_line_chart_rounded),
              title: Text("Transactions"),
              selectedColor: Colors.black,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person_outline_rounded),
              title: Text("Profile"),
              selectedColor: Colors.black,
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(10, 10, 12, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Cards", style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: "mersad-bold"),),
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://media.istockphoto.com/id/1227543794/photo/colored-portrait-of-excited-young-man-with-dreadkocks-looking-away.jpg?s=612x612&w=0&k=20&c=FS_F32Bu8AFKaiSeuQ8DVEktEWYm5Qt3NfTr0Ysj-W0="),

                    ),
                  ],
                ),
              ),
              Container(

                padding: EdgeInsets.all(20),
                height: 220,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white.withOpacity(0.3), width: 0.6),
                  gradient:LinearGradient(
                    colors: [Color.fromRGBO(255, 255, 255, 0),Colors.white.withOpacity(0.17), Color.fromRGBO(255, 255, 255, 0)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 25,
                            height: 25,
                            child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Apple_logo_white.svg/640px-Apple_logo_white.svg.png", fit: BoxFit.contain,)
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.network("https://logos-world.net/wp-content/uploads/2020/09/Mastercard-Logo.png", fit: BoxFit.contain,)
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("DARIUS MOON", style: TextStyle(color: Colors.white, fontFamily: "mersad-bolder", fontSize: 20),),
                        SizedBox(height: 5,),
                        Text("4521  7896  5412  3698", style: TextStyle(color: Colors.white.withOpacity(.6), fontFamily: "mersad-bold", fontSize: 25),),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 35, 0, 0),
                color: Color.fromRGBO(191,239,198,1),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Your Balance:", style: TextStyle( fontFamily: "mersad-bold", fontSize: 25),),
                        SizedBox(height: 5,),
                        Text("\$ 20,854.98", style: TextStyle( fontFamily: "mersad-bolder", fontSize: 35),),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),

                      child: Text("Send", style: TextStyle( fontFamily: "mersad-bold", fontSize: 18, color: Colors.white),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Transactions", style: TextStyle( fontFamily: "mersad-bolder", fontSize: 23),),
                        Icon(Icons.search_rounded)
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(

                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    child: Icon(Icons.tiktok_rounded),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(213,192,240,1),
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Tiktok", style: TextStyle( fontFamily: "mersad-bold", fontSize: 23),),
                                      Text("18 Jan 2023 at 3:20 pm", style: TextStyle( fontFamily: "mersad-bold", fontSize: 15, color: Colors.black.withOpacity(0.5)),),
                                    ],
                                  )
                                ],
                              ),
                              Text("\$ -54.98", style: TextStyle( fontFamily: "mersad-bolder", fontSize: 20),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(

                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    child: Icon(Icons.golf_course),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(213,192,240,1),
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Golf Traning", style: TextStyle( fontFamily: "mersad-bold", fontSize: 23),),
                                      Text("13 Jan 2023 at 3:20 pm", style: TextStyle( fontFamily: "mersad-bold", fontSize: 15, color: Colors.black.withOpacity(0.5)),),
                                    ],
                                  )
                                ],
                              ),
                              Text("\$ -10.98", style: TextStyle( fontFamily: "mersad-bolder", fontSize: 20),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(

                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    child: Icon(Icons.laptop_mac_outlined),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(213,192,240,1),
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Mac Repair", style: TextStyle( fontFamily: "mersad-bold", fontSize: 23),),
                                      Text("18 Jan 2023 at 3:20 pm", style: TextStyle( fontFamily: "mersad-bold", fontSize: 15, color: Colors.black.withOpacity(0.5)),),
                                    ],
                                  )
                                ],
                              ),
                              Text("\$ -54.98", style: TextStyle( fontFamily: "mersad-bolder", fontSize: 20),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(

                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    child: Icon(Icons.tiktok_rounded),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(213,192,240,1),
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Tiktok", style: TextStyle( fontFamily: "mersad-bold", fontSize: 23),),
                                      Text("18 Jan 2023 at 3:20 pm", style: TextStyle( fontFamily: "mersad-bold", fontSize: 15, color: Colors.black.withOpacity(0.5)),),
                                    ],
                                  )
                                ],
                              ),
                              Text("\$ -54.98", style: TextStyle( fontFamily: "mersad-bolder", fontSize: 20),),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
