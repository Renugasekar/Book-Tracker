import 'package:flutter/material.dart';
import 'package:book_tracker/widgets/login_form.dart';
import 'login_page.dart';

class GetStarted extends StatelessWidget {
  const 
  GetStarted({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
     child: CircleAvatar(
       radius: 100,
       backgroundColor: Colors.grey[200],
       backgroundImage: AssetImage('assets/first.jpg'),
       child:Column(
         children: [
          Spacer(),
          SizedBox(height:10),
            Text('BOOK TRACKER',
            style:TextStyle(color:Color.fromARGB(255, 248, 5, 5),fontWeight:FontWeight.bold,fontSize:45,),), 
            Text('"Read.Change.Yourself"',
            style:TextStyle(color:Color.fromARGB(255, 0, 0, 0),fontWeight:FontWeight.w100,fontSize:35,),),
            SizedBox(height:20,),
            TextButton.icon(
              style:TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Color.fromARGB(255, 20, 113, 189),
                textStyle:TextStyle(fontSize:20),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              }, 
              icon: Icon(Icons.login_rounded),
               label:Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Sign in to get started'),
               )),
             Spacer(),
         ]
       ),
     )
    );
  }
}
