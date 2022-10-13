import 'package:flutter/material.dart';

import 'package:list_rempah/card.dart';

import 'Profil.dart';

class list_rempah extends StatefulWidget {
  const list_rempah({Key? key}) : super(key: key);

  @override
  State<list_rempah> createState() => _list_rempahState();
}

class _list_rempahState extends State<list_rempah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
      child: ListView(
        children: <Widget>[
          Column(
            children: [
              cardbox(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [


                  profil(),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}
