import 'package:flutter/material.dart';
class Entry extends StatelessWidget {
 TextEditingController name=TextEditingController();
 TextEditingController code=TextEditingController();
 TextEditingController deisg=TextEditingController();
 TextEditingController sal=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Container(

            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                      hintText: "Name",
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                TextField(
                  controller: deisg,
                  decoration: InputDecoration(
                      hintText: "Designation",
                      labelText: "Designation",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: sal,
                  decoration: InputDecoration(
                      hintText: "Salary",
                      labelText: "Salary",
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
                      child: Text("REGISTER",style: TextStyle(
                          color: Colors.white,fontSize: 20
                      ),),
                      onPressed:(){
                        var getName=name.text;
                        var getCode=code.text;
                        var getDesig=deisg.text;
                        var getSal=sal.text;
                        print(getName);
                        print(getCode);
                        print(getDesig);
                        print(getSal);

                      }),
                ),
              ],
            ),

          ),
        )
      ),
    );
  }
}
