import 'package:flutter/material.dart';


class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
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
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                          ),
                          const SizedBox(height: 3),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 5),
                            decoration: const BoxDecoration(
                                color: Color(0xfff5f8fd),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Email",
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 5),
                            decoration: const BoxDecoration(
                                color: Color(0xfff5f8fd),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                hintText: "Password",
                                border: InputBorder.none,
                                prefixIcon:
                                Icon(Icons.vpn_key,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ]),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  Container(
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.w500),
                    ),
                  ),

                  const SizedBox(height: 25),

                  //From here the signin buttons will occur.

                  Container(
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
                      child: const Text("Masuk"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
