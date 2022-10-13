import 'package:flutter/material.dart';
import 'package:list_rempah/asset.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Profil.dart';

class cardbox extends StatelessWidget {
  const cardbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Row(
         crossAxisAlignment: CrossAxisAlignment.start,

         children: <Widget>[

           Container(
             child: profil(),
             margin: const EdgeInsets.only(bottom: 10),
             padding: EdgeInsets.all(10),
             height: 100,
             width: 100,
             color: Colors.red,
           )
         ],
       )
     ],
   );

  }
}
