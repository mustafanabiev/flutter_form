import 'package:flutter/material.dart';
import 'package:flutter_form/service.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  String _name;
  String _email;
  String _phoneNumber;
  String _password;

  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();

  Widget _buildName() {
    return Container(
      width: 400,
      child: TextFormField(
        keyboardType: TextInputType.name,
        maxLength: 20,
        decoration: InputDecoration(
          labelText: 'Name',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Requeired';
          }
        },
        onSaved: (String value) {
          _name = value;
        },
      ),
    );
  }

  Widget _buildEmail() {
    return Container(
      width: 400,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Email',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Requeired';
          }
          if (!RegExp(
                  r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
              .hasMatch(value)) {
            return 'Please enter a valid email Address';
          }

          return null;
        },
        onSaved: (String value) {
          _email = value;
        },
      ),
    );
  }

  Widget _buildPhoneNumber() {
    return Container(
      width: 400,
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          labelText: 'Phone',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Phone is Requeired';
          }
        },
        onSaved: (String value) {
          _phoneNumber = value;
        },
      ),
    );
  }

  Widget _buildPassword() {
    return Container(
      width: 400,
      child: TextFormField(
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          labelText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Password is Requeired';
          }
        },
        onSaved: (String value) {
          _password = value;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
              key: _fromKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildName(),
                  SizedBox(
                    height: 2,
                  ),
                  _buildEmail(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildPhoneNumber(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildPassword(),
                  SizedBox(
                    height: 80,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (!_fromKey.currentState.validate()) {
                          return;
                        }
                        _fromKey.currentState.save();

                        print(_name);
                        print(_email);
                        print(_phoneNumber);
                        print(_password);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DataService(
                                name: _name,
                                email: _email,
                                phoneNumber: _phoneNumber,
                                password: _password),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      )),
                ],
              )),
        ),
      ),
    );
  }
}
