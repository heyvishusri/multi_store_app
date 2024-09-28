// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CustomerRegister extends StatefulWidget {
  const CustomerRegister({Key? key}) : super(key: key);

  @override
  State<CustomerRegister> createState() => _CustomerRegisterState();
}

class _CustomerRegisterState extends State<CustomerRegister> {
  get fontWeight => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/welcome_screen');
                  },
                  icon: const Icon(
                    Icons.home_work,
                    size: 40,
                  ))
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.purpleAccent,
                ),
              ),
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: IconButton(
                      icon: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        print('pick image from camera');
                        // Open camera or file picker
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: IconButton(
                      icon: const Icon(
                        Icons.photo,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        print('pick image from gallary');
                        // Open camera or file picker
                      },
                    ),
                  )
                ],
              )
            ],
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Full Name',
              hintText: 'Enter your full name',
            ),
          ),
        ],
      ),
    );
  }
}
