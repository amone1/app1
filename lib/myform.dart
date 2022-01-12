import 'package:flutter/material.dart';
import 'package:app1/widgets/full_button.dart';
import 'package:app1/widgets/my_form_text_field.dart';
import 'package:app1/models/form_model.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyFormState();
  }
}

class MyFormState extends State<MyForm> {
  // email RegExp
  final _emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  // uniquely identifies a Form
  final _formKey = GlobalKey<FormState>();

  // holds the form data for access
  final model = FormModel(password: '', emailAddress: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // title: const Text("Authentication"),
        backgroundColor: Colors.white,

      ),
      body: Container(
         // decoration: BoxDecoration(color: Colors.white),
         // padding: EdgeInsets.all(20.0),
          //Image.network('http://yanoto.ma/logomoqano.png'),
          width: double.infinity,

          child: Container(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

            decoration: BoxDecoration(color: Colors.white),
            child: Column(

              children: <Widget>[

                const Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                Image.network(
                    'http://yanoto.ma/logomoqano.png',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      MyFormTextField(
                        isObscure: false,
                        decoration: const InputDecoration(
                          labelText: "EmailAddress",
                          hintText: "me@abc.com",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Entrer svp un email valide ';
                          } else if (!_emailRegExp.hasMatch(value)) {
                            return 'Email invalide!';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          model.emailAddress = value;
                        },
                      ),
                      MyFormTextField(
                        isObscure: true,
                        decoration: InputDecoration(
                            labelText: "Password", hintText: "my password"),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter a password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          model.password = value;
                        },
                      ),
                      FormSubmitButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, otherwise false.
                          if ( true/*_formKey.currentState.validate()*/) {
                            //_formKey.currentState.save();
                            print(model);

                            //Scaffold.of(_formKey.currentContext).showSnackBar( SnackBar(content: Text('Processing Data')));
                          }
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}