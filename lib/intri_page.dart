

import 'package:flutter/material.dart';
import 'package:pdp_intermediate/home_page.dart';
class IntroPage extends StatefulWidget {
  static final String id = "intro_page";
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [

          // Padding(
          //   padding: const EdgeInsets.only(right: 30),
          //   child: InkWell(
          //     onTap: (){
          //       Navigator.pushReplacementNamed(context, HomePage.id);
          //     },
          //       child: Text("Skip", style: TextStyle(fontSize: 18, color: Colors.green),)),
          // )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page){
              setState(() {
                currentIndex =page;
              });
            },
            controller: _pageController,
            children: [
              makePage(
                  title: "Learn from experts",
                  content: "Select from top instructors around the world",
                   image: "images/pay.png",
                skip: ""
              ),

              makePage(
                image: "images/pay1.png",
                title: "Find video courses",
                content: "Build your library for your carer and personal growth",
                skip: ""
              ),

              makePage(
                image: "images/pay2.png",
                title: "Go at your own pace",
                content: "Enjoy lifetime access to courses on PDP's  website and app",
                skip: ""
              ),
            ],
          ),
           Container(
             margin: EdgeInsets.only(bottom: 40),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: _buildIndecator(),
             ),
           ),
          if(currentIndex == 2)
            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 30),
              child: Container(
                alignment: Alignment.bottomRight,
                child:Text("Skip", style: TextStyle(color: Colors.green, fontSize: 18),),
              ),
            )
        ],
      ),
    );
  }
  Widget makePage ({title, content, image,  skip}){
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 50, bottom: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(title, style: TextStyle(fontSize: 25, color: Colors.green), textAlign: TextAlign.center,),
                SizedBox(height: 20,),
                Text(content, style: TextStyle(color: Colors.grey, fontSize:16), textAlign: TextAlign.center,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        child: Text(skip, style: TextStyle(fontSize: 18, color: Colors.green), textAlign: TextAlign.right,)),
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(image)
                ),

              ],
            )
          ],

        ),
      ),
    );
  }

  Widget _indecator (bool isActive){
    return AnimatedContainer(duration: Duration(microseconds: 300),
    height: 6,
      width: isActive ? 30 : 6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  List<Widget> _buildIndecator() {
    List<Widget> indecators = [];
    for( int i=0; i<3; i++){
      if(currentIndex == i){
        indecators.add(_indecator(true));
      }else{
        indecators.add(_indecator(false));
      }
    }
    return indecators;
  }
}
