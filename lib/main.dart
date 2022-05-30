import 'package:flutter/material.dart';

import 'muzeListesi.dart';
void main() {
  runApp(MaterialApp(
      home: MyApp()
  ));
}

class MyApp  extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://www.upload.ee/image/14169344/WhatsApp_Image_2022-05-24_at_21.38.12.jpeg",
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(top:470,left:6,right:30),
                      child : Column(

                          children:[
                            Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                                      child: Container(
                                        height: 50,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 35),
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                     Navigator.of(context).push(MaterialPageRoute(builder: (_) => MuzeListesi()));
                                                  },
                                                  child: Text("GİRİŞ",style: TextStyle(color: Colors.white, fontSize: 20))),
                                            ],
                                          ),
                                        ),)
                                  ),
                                ]
                            ),]
                      )
                  ),
                ),
              ) ],
          ),
        ),
      ),
    );
  }
}