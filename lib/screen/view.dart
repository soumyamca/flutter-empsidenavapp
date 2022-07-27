import 'package:flutter/material.dart';
class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
   var empname=[];
   var empcode=[];
   var empdesig=[];
   var empsal=[];
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
            title: Text("VIEW"),
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
                          setState(() {
                            empname.add(getName);
                            empcode.add(getCode);
                            empdesig.add(getDesig);
                            empsal.add(getSal);
                          });

                        }),
                  ),
                  ListView.builder(
                    shrinkWrap: true,

                    itemCount: empname.length==null?0:empname.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: Icon(Icons.account_box,color: Colors.red,size: 25,),
                            trailing: GestureDetector(
                              onTap: (){
                                setState(() {
                                  empname.removeAt(index);
                                  empcode.removeAt(index);
                                  empdesig.removeAt(index);
                                  empsal.removeAt(index);
                                });
                              },
                                child: Icon(Icons.delete,color: Colors.black,size: 25,)),
                            title: Text(empname[index]),
                            subtitle: Text(empcode[index]+"\n"+"designation: "+empdesig[index]+"\n"+"Salary"+empsal[index]),
                          ),
                        );
                      }),
                ],
              ),

            ),
          )
      ),
    );
  }
}
