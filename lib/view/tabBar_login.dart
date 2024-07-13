import 'package:tugasmobile2/view/daftar_akun.dart';
import 'package:tugasmobile2/view/login.dart';
import 'package:flutter/material.dart';

class TabBarLogin extends StatefulWidget {
  const TabBarLogin({super.key});

  @override
  State<TabBarLogin> createState() => _TabBarLoginState();
}

class _TabBarLoginState extends State<TabBarLogin> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 10,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Login",
              ),
              Tab(
                text: "Daftar",
              ),
            ],
            labelStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            labelColor: Color.fromARGB(255, 21, 181, 235),
            indicatorColor: Color.fromARGB(255, 21, 181, 235),
            dividerColor: Color.fromARGB(255, 21, 181, 235),
          ),
        ),
        body: const TabBarView(children: [
          Login(),
          DaftarAkun(),
        ]),
      ),
    );
  }
}
