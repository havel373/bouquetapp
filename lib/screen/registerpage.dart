import 'package:flutter/material.dart';

import 'loginpage.dart';


class registerpage extends StatelessWidget {
  const registerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              new Container(
                color: Colors.white,
                height: MediaQuery
                    .of(context)
                    .size
                    .height -
                    70,
                alignment: Alignment.center,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 60 ),

                      // From here the login Credentials start.
                      new Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                              ),
                              const SizedBox(height: 3),
                              new Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 5),
                                decoration: const BoxDecoration(
                                    color: Color(0xfff5f8fd),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "Alamat Email",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              new Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 5),
                                decoration: const BoxDecoration(
                                    color: Color(0xfff5f8fd),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "Nomor Telepon",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              new Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 5),
                                decoration: const BoxDecoration(
                                    color: Color(0xfff5f8fd),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "Password",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                            ]),
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      const SizedBox(height: 25),

                      new Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: 200,
                        height: 45,
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xff232323)),
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => loginpage()
                                )
                            );
                          },
                          child: const Text("Daftar"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ]
          )

        )
    );
  }
}
