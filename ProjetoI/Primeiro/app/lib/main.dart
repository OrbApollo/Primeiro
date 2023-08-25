import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp ({super.key});  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de pessoas',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const contador(),
    );
  }
}

class contador extends StatefulWidget {
  const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {
  int count = 0;
  void decrement (){

    setState(() {
      if (count>0){
          count--;
      
      }
    
    });

    print(count);
  }
  void increment(){
    setState(() {
      if (count<30){
          count++;
      
      }
    });
    print(count);
  }
    @override
    Widget build(BuildContext context) 
      {
            return MaterialApp(
            home: Scaffold(
            backgroundColor: Colors.red,
            body: Container (
            decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assert/restaurant.png"),
              fit: BoxFit.cover
            )
            ),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Pode entrar!", style: TextStyle(fontSize: 30.0, color: Colors.white),),
            Text(count.toString(), style: TextStyle(fontSize: 100, color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)
                  )
                ),
                child: Text("Saiu", style: TextStyle(fontSize: 16, color: Colors.black)),
                ),

                SizedBox(width: 64,),

                  TextButton(
                  onPressed: increment,
                  style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)
                  )
                ),
                child: Text("Entrou", style: TextStyle(fontSize: 16, color: Colors.black)),
                ),

              ],
            )
          ],
       ),
    ) ) );
  }
}
