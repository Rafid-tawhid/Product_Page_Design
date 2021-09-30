import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("Rafid Tawhid"),
          accountEmail: Text("rafidtawhid@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: Icon(Icons.person,size: 40,),backgroundColor: Colors.brown,

          ),
        ),
        ListTile(
          onTap: (){

          },
          leading: Icon(Ionicons.list),
          title: Text("My Orders"),
          trailing: Icon(Ionicons.arrow_forward_sharp),
        )
      ],
    ),
  );
}
