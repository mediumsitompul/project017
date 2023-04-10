import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: const Center(child: Text('PingPong Score Board\nBy Medium Sitompul')),),
      body: MyProject(),
      ),
    );
  }
}



class MyProject extends StatefulWidget {
  MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  int _n = 0;
  int _m = 0;

  void add() {
    setState(() {
    if (20 >=_n) _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 00) _n--;
    });
  }


  void add2() {
    setState(() {
      if (20 >=_m) _m++;
    });
  }

  void minus2() {
    setState(() {
      if (_m != 00) _m--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
    Container(
      padding: const EdgeInsets.fromLTRB(40, 0, 10, 0),
      child: Center(
        child: Row(
          children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Column(
                  children: [
                    Container(
                      child: Text('Name-A', style: TextStyle(fontSize: 30),),
                      color: Colors.amber,
                      ),
                    Container(
                      child: Text('$_n'.toString().padLeft(2, '0'), style: TextStyle(fontSize: 110),),
                      color: Colors.blue,
                    ),
                  ],
                ),

                    //Kiri Atas
                    FloatingActionButton(
                      onPressed: add,
                      child: Icon(Icons.plus_one, color: Colors.black,),
                      backgroundColor: Colors.white,),

                    //Kiri Bawah
                    FloatingActionButton(
                      onPressed: minus,
                      child: Icon(Icons.exposure_minus_1, color: Colors.black,),
                      backgroundColor: Colors.white,),

            ],
            ),



            //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
            //SPACE BETWEEN GROUP-A & GROUP-B
            const SizedBox(width: 60,),
            //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Column(
                  children: [
                    Container (
                      child: Text('Name-B', style: TextStyle(fontSize: 30),),
                      color: Colors.amber,
                      ),
                    Container(
                      //child: Text('$_m', style: TextStyle(fontSize: 110),),
                      child: Text('$_m'.toString().padLeft(2, '0'), style: TextStyle(fontSize: 110),),
                      color: Colors.blue,
                    ),
                  ],
                ),

                //Kanan Atas
                FloatingActionButton(
                  onPressed: add2,
                  child: Icon(Icons.plus_one, color: Colors.black,),
                  backgroundColor: Colors.white,),

                //Kiri Bawah
                FloatingActionButton(
                  onPressed: minus2,
                  child: Icon(Icons.exposure_minus_1, color: Colors.black,),
                  backgroundColor: Colors.white,),
              ],
            ),
          ],
        ),

      ),
    ),
    );
  }
}
