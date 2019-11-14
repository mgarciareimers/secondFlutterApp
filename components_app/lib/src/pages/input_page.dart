import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = "";
  String _email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: <Widget>[
          this._createNameInput(),
          Divider(),
          this._createEmailInput(),
          Divider(),
          this._createPasswordInput(),
          Divider(),
          this._createPerson(),
        ],
      ),
    );
  }

  // Method that creates an input.
  Widget _createNameInput() {
      return TextField(
        autofocus: false,
        textCapitalization: TextCapitalization.sentences,
        onChanged: (value) {
          setState(() {
            this._name = value;
          });
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          prefixIcon: Icon(Icons.account_circle),
          suffixIcon  : Icon(Icons.accessibility),
          hintText: 'Type your name...',
          labelText: 'Name',
          helperText: 'Only your first name',
          counter: Text('Characters: ${ this._name.length }'),
        ),
      );
  }

  // Method that creates an email.
  Widget _createEmailInput() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) => setState(() {
        this._email = value;
      }),
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        prefixIcon: Icon(Icons.email),
        suffixIcon  : Icon(Icons.alternate_email),
        hintText: 'Type your email...',
        labelText: 'Email',
      ),
    );
  }

  // Method that creates an email.
  Widget _createPasswordInput() {
    return TextField(
      obscureText: true,
      onChanged: (value) => setState(() {
        this._email = value;
      }),
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        prefixIcon: Icon(Icons.lock),
        suffixIcon  : Icon(Icons.lock_open),
        hintText: 'Type your password...',
        labelText: 'Password',
      ),
    );
  }

  // Method that creates a person.
  Widget _createPerson() {
    return ListTile(
      title: Text('Name: ${ this._name }'),
      subtitle: Text('Email: ${ this._email }'),
    );
  }
}
