import 'package:flutter/material.dart';
import 'package:untitled/secondformregistration.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);


  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  TextEditingController ctrusename = new TextEditingController();
  TextEditingController ctrpassword = new TextEditingController();
  int id = 1;
  String myPhone = "-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration"),),
      body: Container(
        margin: EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Registation',style: TextStyle(fontSize: 16,),),
            Container(height: 20,),
            TextField(
              controller: ctrusename,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            Container(height: 10,),

            TextField(
              controller: ctrpassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20,),
            Text('Jenis Kelamin',style: TextStyle(fontSize: 14,),),
            SizedBox(height: 20,),
            Row(
              children: [
                Radio(value: 1, groupValue: id, onChanged: (val){
                  setState((){
                    id = 1;
                  });
                }),
                Text('Male')
              ],
            ),
            Row(
              children: [
                Radio(value: 2, groupValue: id, onChanged: (val){
                  setState((){
                    id = 2;
                  });
                }),
                Text('Female')
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