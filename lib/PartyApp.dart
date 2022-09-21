import 'package:flutter/material.dart';
class PartApp extends StatefulWidget {
  static final String id = "partApp";
  const PartApp({Key? key}) : super(key: key);

  @override
  State<PartApp> createState() => _PartAppState();
}

class _PartAppState extends State<PartApp> {
  bool _isLogin = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/img_10.png"),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                colors: [
                  Colors.black.withOpacity(.6),
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.4),
                  Colors.black.withOpacity(.1),
                ]
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Text("Find the best parties near you", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Text("Let us find you a party for your interest", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w100),),
                ),
                SizedBox(height: 150,),
                _isLogin ?
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Center(child: Text('Start', style: TextStyle(color: Colors.white,  fontSize: 20),)),
                  ),
                ):
                Padding(
                  padding: const EdgeInsets.only(left:20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 55,
                        width: 175,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: Center(child: Text('Google +', style: TextStyle(color: Colors.white,  fontSize: 20),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 55,
                          width: 175,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Center(child: Text('Facebook', style: TextStyle(color: Colors.white,  fontSize: 20),)),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
