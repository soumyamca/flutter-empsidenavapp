import 'package:flutter/material.dart';
class Search extends StatelessWidget {
 TextEditingController code=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Search"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: code,
                decoration: InputDecoration(
                    hintText: "Empcode",
                    labelText: "Empcode",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child:  RaisedButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text("SEARCH",style: TextStyle(
                        color: Colors.white,fontSize: 20
                    ),),
                    onPressed:(){

                      var getCode=code.text;

                      print(getCode);


                    }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
