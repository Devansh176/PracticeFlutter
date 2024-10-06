import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height = screenSize.height;
    final padding = width * 0.05;
    final fontSize = width * 0.05;
    final _formKey = GlobalKey<FormState>();

    String firstname = '';
    String lastname = '';
    String email = '';
    String password = '';

    submitForm(){
      print(firstname);
      print(lastname);
      print(email);
      print(password);
    }

    trySubmit(){
      final isValid = _formKey.currentState!.validate();
      if(isValid){
        _formKey.currentState!.save();
        submitForm();
      } else {
        print("Error");
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Form',
          style: TextStyle(
            fontSize: fontSize * 1.5,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(padding),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter First Name',
                    ),
                    key: ValueKey('firstname'),
                    validator: (value) {
                      if(value.toString().isEmpty){
                        return 'First name should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved : (value) {
                      firstname = value.toString();
                    }
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Last Name',
                      ),
                      key: ValueKey('lastname'),
                      validator: (value) {
                        if(value.toString().isEmpty){
                          return 'Last name should not be empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved : (value) {
                        lastname = value.toString();
                      }
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Email',
                      ),
                      key: ValueKey('email'),
                      validator: (value) {
                        if(value.toString().isEmpty){
                          return 'Email should not be empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved : (value) {
                        email = value.toString();
                      }
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                    ),
                    key: ValueKey('password'),
                    validator: (value) {
                      if(value.toString().length <= 7){
                        return 'Minimum length of password should be 8';
                      } else {
                        return null;
                      }
                    },
                    onSaved : (value) {
                      password = value.toString();
                    }
                  ),
                  SizedBox(height: height * 0.03,),
                  SizedBox(
                    width: width * 0.4,
                    child: TextButton(
                      onPressed: (){
                        trySubmit();
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.amber),
                      ),
                      child: Text('Submit',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: fontSize * 0.85,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
