import 'package:flutter/material.dart';
import 'package:flutter_application_1/beranda.dart';
import 'package:flutter_application_1/daftar.dart';

class LoginPwpb extends StatelessWidget {
  const LoginPwpb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 88),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Image(
                          image: AssetImage("images/Ellipse 6.png"))),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Green Garden",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Go Green",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Sidoarjo",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 31,
              ),
              const Text(
                "Masuk ke email anda",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
              ),
              const SizedBox(
                height: 31,
              ),
              const Text(
                "Username",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "your username",
                  prefixIconConstraints: const BoxConstraints(
                    minHeight: 0,
                    minWidth: 0,
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  alignLabelWithHint: true,
                  fillColor: Colors.transparent,
                  filled: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 46, 117, 48))),
                  disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 46, 117, 48))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(55),
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 46, 117, 48))),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 46, 117, 48))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(55),
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 46, 117, 48))),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(55),
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 46, 117, 48))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "your username",
                  prefixIconConstraints: const BoxConstraints(
                    minHeight: 0,
                    minWidth: 0,
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  alignLabelWithHint: true,
                  fillColor: Colors.transparent,
                  filled: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 46, 117, 48))),
                  disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 46, 117, 48))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(55),
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 46, 117, 48))),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 46, 117, 48))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(55),
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 46, 117, 48))),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(55),
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 46, 117, 48))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 46, 117, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Beranda()),
                  );
                },
                child: SizedBox(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'Masuk',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Belum memiliki akun? "),
                    InkWell(
                        child: const Text(
                          "Daftar",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Daftar()),
                          );
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
