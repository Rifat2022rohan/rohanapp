import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profilewidget extends StatefulWidget {
  const Profilewidget({Key? key}) : super(key: key);

  @override
  _ProfilewidgetState createState() => _ProfilewidgetState();
}

class _ProfilewidgetState extends State<Profilewidget> {
  @override
  TextEditingController? _nameControler;
  TextEditingController? _phoneControler;
  TextEditingController? _ageControler;
  SetDataToTextField(data){
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

          ),
          controller: _nameControler =
          TextEditingController(text:data['name']),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
            decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

          ),
          controller: _phoneControler =
          TextEditingController(text: data['phone']),

        ),
          SizedBox(
          height: 10,
        ),
        TextFormField(
            decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

          ),
          controller: _ageControler =
          TextEditingController(text: data['age']),

        ),
          SizedBox(
          height: 10,
        ),
        ElevatedButton(onPressed: ()=> updateData(), child: Text("update"))

      ],
    );
  }
  updateData(){
    CollectionReference _collectionRef =
    FirebaseFirestore.instance.collection("users_form_data");
    return _collectionRef.doc(FirebaseAuth.instance.currentUser!.email).update({
      "name":_nameControler!.text,
      "phone":_phoneControler
    });
  }

  
  Widget build(BuildContext context) {
    return Container();
  }
}
