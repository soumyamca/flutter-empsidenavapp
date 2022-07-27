import 'package:empsidenavapp/screen/entry.dart';
import 'package:empsidenavapp/screen/search.dart';
import 'package:empsidenavapp/screen/view.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,

      child: ListView(

        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text("E",style: TextStyle(color: Colors.white,fontSize: 30),),
            ),
            decoration: BoxDecoration(color: Colors.red),
              accountName:Text("Employeeapp"),
              accountEmail: Text("empapp@gmail.com")),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Entry()));
            },
            leading: Icon(Icons.account_box,color: Colors.black,size: 30,),
            
            title: Text("ENTRY"),
          ),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Search()));
            },
            leading: Icon(Icons.search,color: Colors.black,size: 30,),
            title: Text("SEARCH"),
          ),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>View()));
            },
            leading: Icon(Icons.camera,color: Colors.black,size: 30,),
            title: Text("VIEW"),
          ),
          
        ],
      ),
    );
  }
}
