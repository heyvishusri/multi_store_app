import 'package:flutter/material.dart';

class SubCategProducts extends StatelessWidget {
  final String maincategName;
  final String subcategname;
  const SubCategProducts(
      {Key? key, required this.subcategname, required this.maincategName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            subcategname,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Text(maincategName),
        ));
  }
}
