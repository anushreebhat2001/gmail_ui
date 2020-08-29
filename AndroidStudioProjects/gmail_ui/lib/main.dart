import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Gmail';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title,style: TextStyle(fontFamily: 'Product Sans'),),
        backgroundColor: Color(0xFFDB4437),
        actions:<Widget> [
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: Icon(
              Icons.search,
              size: 25.0,
            ),
          )
        ],
      ),
      body:
          Center(
             child: Text('Mail inbox',
            style: TextStyle(fontFamily: 'Product Sans')
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
      // Add your onPressed code here!
        },
        child: Icon(Icons.add,size: 40.0,),
      backgroundColor: Color(0xFFDB4437),
      ),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              width: 100.0,
              height: 65.0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0,30.0,25.0,8.0),
                child: Text('Gmail', style: TextStyle(fontFamily: 'Product Sans',fontStyle: FontStyle.normal ,fontSize: 24,color:Color(0xFFDB4437),fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Divider(thickness: 1.0),
            Padding(
               padding: const EdgeInsets.only(right: 9.0),
               child: Container(
                 decoration: BoxDecoration( color:Color(0xFFDB4437).withOpacity(0.25) ,borderRadius: BorderRadius.only(bottomRight:Radius.circular(40.0) ,topRight: Radius.circular(40.0) ),

                 ),
                 child: ListTile(
                   leading: Icon(Icons.inbox,color: Color(0xFFDB4437)),
                    title: Row(
                      children: [
                        Text('Primary',
                            style:TextStyle(fontFamily: 'Product Sans',color:Color(0xFFDB4437),fontWeight: FontWeight.w600)),
                        Padding(
                          padding: const EdgeInsets.only(left:99.0),
                          child: SizedBox( width: 60.0,height: 25.0,
                            child: Container(
                              child:Center(child: Text('99+',style: (TextStyle(fontFamily:'Product Sans',color: Color(0xFFDB4437),fontWeight: FontWeight.w500 )),)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {

                      Navigator.pop(context);
                    },
                  ),
               ),
             ),

            ListTile(
              leading: Icon(Icons.people,color: Colors.black54),
              title: Text('Social',
                      style:TextStyle(fontFamily: 'Product Sans',color: Colors.black54,fontWeight: FontWeight.w600)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.local_offer,color: Colors.black54),
              title: Row(
                children: [
                  Text('Promotions',
                      style:TextStyle(fontFamily: 'Product Sans',color: Colors.black54,fontWeight: FontWeight.w600)),
                   Padding(
                     padding: const EdgeInsets.only(left:80.0),
                     child: SizedBox( width: 60.0,height: 25.0,
                        child: Container(
                     decoration: BoxDecoration(borderRadius:BorderRadius.circular(14.0),color: Color(0xFF198039)),
                        child: Center(child: Text('3 new',style: (TextStyle(fontFamily:'Product Sans',color: Colors.white )),)),
                        ),
                     ),
                   ),
                     ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline,color: Colors.black54),
              title: Row(
                children: [
                  Text('Update',
                      style:TextStyle(fontFamily: 'Product Sans',color: Colors.black54,fontWeight: FontWeight.w600)),
                  Padding(
                    padding: const EdgeInsets.only(left:105.0),
                    child: SizedBox( width: 60.0,height: 25.0,
                      child: Container(
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(14.0),color: Color(0xFFf9ab00)),
                        child: Center(child: Text('1 new',style: (TextStyle(fontFamily:'Product Sans',color: Colors.white )),)),
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer,color: Colors.black54),
              title: Text('Forums',
                  style:TextStyle(fontFamily: 'Product Sans',color: Colors.black54,fontWeight: FontWeight.w600)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0,8.0,8.0,8.0),
              child: Text('ALL LABELS',style:TextStyle( fontFamily: 'Product Sans',
              color: Colors.black54,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w500),
            ),),
            ListTile(
              leading: Icon(Icons.star_border,color: Colors.black54),
              title: Text('Starred',
                  style:TextStyle(fontFamily: 'Product Sans',color: Colors.black54,fontWeight: FontWeight.w600)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.access_time,color: Colors.black54),
              title: Text('Snoozed',
                  style:TextStyle(fontFamily: 'Product Sans',color: Colors.black54,fontWeight: FontWeight.w600)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.label_important,color: Colors.black54),
              title: Row(
                children: [
                  Text('Important',
                      style:TextStyle(fontFamily: 'Product Sans',color: Colors.black54,fontWeight: FontWeight.w600)),
                  Padding(
                    padding: const EdgeInsets.only(left:95.0),
                    child: SizedBox( width: 60.0,height: 25.0,
                      child: Container(
                        child:Center(child: Text('99+',style: (TextStyle(fontFamily:'Product Sans',color: Colors.black54,fontWeight: FontWeight.w500 )),)),
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.send,color: Colors.black54),
              title: Text('Sent',
                  style:TextStyle(fontFamily: 'Product Sans',color: Colors.black54,fontWeight: FontWeight.w600)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.schedule,color: Colors.black54),
              title: Text('Schedule',
                  style:TextStyle(fontFamily: 'Product Sans',color: Colors.black54,fontWeight: FontWeight.w600)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.send,color: Colors.black54),
                  title: Text('Outbox',
                  style:TextStyle(fontFamily: 'Product Sans',color: Colors.black54,fontWeight: FontWeight.w600)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.note,color: Colors.black54),
              title: Row(
                children: [
                  Text('Drafts',
                      style:TextStyle(fontFamily: 'Product Sans',color: Colors.black54,fontWeight: FontWeight.w600)),
                  Padding(
                    padding: const EdgeInsets.only(left:118.0),
                    child: SizedBox( width: 60.0,height: 25.0,
                      child: Container(
                        child:Center(child: Text('32',style: (TextStyle(fontFamily:'Product Sans',color: Colors.black54,fontWeight: FontWeight.w500 )),)),
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}