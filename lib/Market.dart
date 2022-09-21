import 'package:flutter/material.dart';
class Market extends StatefulWidget {
  static final String id = "market";
  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}
class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Cars", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),),
          actions: [
            Icon(Icons.notifications_none_rounded, color: Colors.black,),
            SizedBox(width: 10,),
            Icon(Icons.shopping_cart, color: Colors.black,),
            SizedBox(width: 10,),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      singleTab(true, "All"),
                      singleTab(false, "Red"),
                      singleTab(false, "Blue"),
                      singleTab(false, "Green"),
                      singleTab(false, "Yellow"),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                makeItem("images/aa.jpg"),
                makeItem("images/img.png"),
                makeItem("images/img_1.png"),
                makeItem("images/img_2.png"),
                makeItem("images/img_3.png"),

              ],
            ),
          ),
          // #make item
        )
      ),
    );
  }
   singleTab(bool type, String text){
    return AspectRatio(aspectRatio: 2.2/1,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: type? Colors.red: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(text, style: TextStyle(fontSize:type?20:17, color: type?Colors.white:Colors.black),),
      ),
    ),
    );

   }

   Widget makeItem(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Row(
          //   children: [
          //     Text('PDP Car', style: TextStyle(color: Colors.white, fontSize: 20),),
          //   ],
          // ),
          Column(

            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text('PDP Car', style: TextStyle(color: Colors.white, fontSize: 30),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Text("Electric", style: TextStyle(color: Colors.red, fontSize: 30),),
                  )

                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Text("100\$", style: TextStyle(color: Colors.white, fontSize: 30),),
                  ),
                ],
              ),
              SizedBox(height: 70,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape:BoxShape.circle
                      ),
                      child: Center(
                        child: Icon(Icons.favorite_border, size: 20,color: Colors.white,),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
   }
}
