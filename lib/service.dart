import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataService extends StatelessWidget {
  final String name;
  final String email;
  final String phoneNumber;
  final String password;
  DataService({this.name, this.email, this.phoneNumber, this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Table(
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Сиздин атыңыз',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ' ${name}',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ]),
                    ],
                  ),
                  TableRow(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Сиздин почтаңыз',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ' ${email}',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ]),
                    ],
                  ),
                  TableRow(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Сиздин номериңиз',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ' ${phoneNumber}',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ]),
                    ],
                  ),
                  TableRow(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Сиздин сыр сөзүңүз',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ' ${password}',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ]),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
