import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  List<String> buah = ['Anggur', 'Semangka', 'Nanas', 'Kelapa'];
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tugas Prokom - List Buah (Anom)',
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, index){
              return Card(
                  child: Padding(
                  padding: const EdgeInsets.all(6),
                    child: Row(
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.blue,
                          child: Image.asset('assets/images/'+buah[index]+'.png'),
                        ),
                        Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              height: 100.0,
                              color: Colors.lightBlueAccent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Center(
                                    child: Text(buah[index],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        )
                      ],
                    ),
                  ),
              );
              },
            separatorBuilder: (context, position) {
              return Container(
      );
      },
            itemCount: buah.length)

        )
    );
  }
}