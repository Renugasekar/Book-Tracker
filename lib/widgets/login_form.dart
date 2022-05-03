import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailTextController,
    required TextEditingController passwordTextController,
  }) : _formKey = formKey, _emailTextController = emailTextController, _passwordTextController = passwordTextController, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailTextController;
  final TextEditingController _passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key:_formKey,
      child: Column(
        children:[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextFormField(
            validator: (value) {
              return value!.isEmpty ?'Please enter email':'null';
            },
            controller: _emailTextController,
            decoration: InputDecoration(
              labelText:'Enter email',
              hintText: 'john@gmail.com',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextFormField(
            validator: (value) {
              return value!.isEmpty ?'Please enter password':'null';
            },
            controller: _passwordTextController,
            obscureText: true,
            decoration: InputDecoration(
              labelText:'Enter password',
              hintText: '',
            ),
          ),
        ),
        SizedBox(
          height:20,
        ),
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
            padding: EdgeInsets.all(15),
            backgroundColor: Color.fromARGB(255, 20, 113, 189),
          ),
          onPressed: (){
            if(_formKey.currentState!.validate())
            {}
          },
           child: Text('Sign In')
        )
        ],
      )
    );
  }
}