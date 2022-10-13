import 'package:flutter/material.dart';
import 'package:button/second.dart';
class registrasi extends StatefulWidget {
  const registrasi({Key? key}) : super(key: key);

  @override
  State<registrasi> createState() => _registrasiState();
}

class _registrasiState extends State<registrasi> {
  TextEditingController ctrusername = TextEditingController();
  TextEditingController ctrpassword = TextEditingController();
  String myPhone = "-";
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Registrasi"),
      ),
      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: ctrusername,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: ctrpassword,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Jenis Kelamin",
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      id = 1;
                    });
                  },
                ),
                const Text("Male")
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      id = 2;
                    });
                  },
                ),
                const Text("Female")
              ],
            ),


            SizedBox(height: 20,),
            Text("Phone : " + myPhone),
            SizedBox(height: 20,),

            ElevatedButton(onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const second()),
              );
              print("Hasil input : " + result.toString());
              setState(() {
                myPhone = result.toString();
              });
            }, child: Text("Phone")),

            Center(
              child:
              ElevatedButton(onPressed: () async {
              }, child: Text("Confrim")),
            )
          ],
        ),
      ),
    );
  }
}
