import 'package:flutter/material.dart';
import 'package:book_tracker/widgets/login_form.dart';
import 'package:book_tracker/widgets/create_account_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCreateAccountClicked=false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTextController=TextEditingController();
  final TextEditingController _passwordTextController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child:Container(
        child: Column(
        children:[
          Expanded(
            flex:2,
            child:Container(
              color:Color.fromARGB(73, 255, 255, 255))),
              Text('Sign In',
              style:TextStyle(color:Colors.black,fontSize: 20,)),
              SizedBox(
                height:20,
                ),
              Column(
                children: [
                  SizedBox(
                    height: 300,
                    width:300,
                    child:isCreateAccountClicked != true 
                    ? LoginForm(formKey: _formKey, 
                    emailTextController: _emailTextController, 
                    passwordTextController: _passwordTextController)
                    :CreateAccountForm(
                      formKey: _formKey, 
                    emailTextController: _emailTextController, 
                    passwordTextController: _passwordTextController)
                    ),
                    TextButton.icon(
                     
                      style:TextButton.styleFrom(
                        primary: Color.fromARGB(255, 20, 113, 189),
                        textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
                      ) ,
                     icon: Icon(Icons.portrait_rounded), 
                      onPressed: (){
                        setState(() {
                          if(!isCreateAccountClicked)
                          {
                            isCreateAccountClicked=true;
                          }else
                          isCreateAccountClicked=false;
                        });
                      },
                    label: Text(isCreateAccountClicked ? 'Already have an account?  ':'Create Account'))
                 ],
                ),
            Expanded(
            flex:2,
            child:Container(
              color:Color.fromARGB(73, 255, 255, 255))),
        ],
      )) ,
    );
  }
}

