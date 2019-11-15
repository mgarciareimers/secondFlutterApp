import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = "";
  String _email = "";
  DateTime _date;

  TextEditingController _inputFieldDateController = new TextEditingController();

  List<String> _options = ['Select', 'Fly', 'X-Ray', 'Super Power'];

  String _selectedOption = 'Select';

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
          this._createDate(context),
          Divider(),
          this._createDropdown(),
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

  // Method that creates an email input.
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

  // Method that creates a password input.
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

  // Method that creates a date input.
  Widget _createDate(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        prefixIcon: Icon(Icons.perm_contact_calendar),
        suffixIcon  : Icon(Icons.calendar_today),
        hintText: 'Type your birthdate...',
        labelText: 'Birthdate',
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        this._selectDate(context);
      },
      controller: this._inputFieldDateController,
    );
  }

  // Method that creates a dropdown menu.
  Widget _createDropdown() {
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(width: 10),
        Expanded(
          child: DropdownButton(
            items: this._getDropdownOptions(),
            onChanged: (selectedOption) {
              setState(() {
                this._selectedOption = selectedOption;
              });
            },
            value: this._selectedOption,
          ),
        ),
      ]
    );
  }

  // Method that creates a person.
  Widget _createPerson() {
    return ListTile(
      title: Text('Name: ${ this._name }'),
      subtitle: Text('Email: ${ this._email }'),
      trailing: Text('Power: ${this._selectedOption}'),
    );
  }

  // Method that selects a date by showing a date picker.
  _selectDate(BuildContext context) async {
    DateTime dateTime = await showDatePicker(
        context: context,
        initialDate:this._date == null ? new DateTime.now() : this._date,
        firstDate: new DateTime(1990),
        lastDate: new DateTime(2025),
        locale: Locale('en', 'US'),
    );

    if (dateTime != null) {
      setState(() {
        this._date = dateTime;
        this._inputFieldDateController.text = '${dateTime.day.toString()}/${dateTime.month.toString()}/${dateTime.year.toString()}';
      });
    }
  }

  // Method that gets the dropdown options.
  List<DropdownMenuItem<String>> _getDropdownOptions() {
    List<DropdownMenuItem<String>> list = new List();

    this._options.forEach((option) {
      list.add(DropdownMenuItem(child: Text(option), value: option));
    });

    return list;
  }
}