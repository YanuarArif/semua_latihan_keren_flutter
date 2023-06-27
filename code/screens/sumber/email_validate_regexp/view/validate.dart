import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './home.dart';
import 'package:validators/validators.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController textEditingController = TextEditingController();
  bool isEmailCorrect = false;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  dynamic snackBar = SnackBar(
    duration: Duration(milliseconds: 1500),
    content: Text("Berhasil Masuk"),
    action: SnackBarAction(
      label: "Mengerti",
      onPressed: () {},
    ),
  );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            backgroundColor:
                isEmailCorrect == false ? Colors.redAccent : Colors.green,
            centerTitle: true,
            elevation: 2,
            title: const Text('Email Validator'),
          ),
          body: Container(
            margin: const EdgeInsets.all(10),
            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Masukan Email Kamu:',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  isEmailCorrect == false ? '🤚' : '👍',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                textFieldValitasi(),
                SizedBox(height: 30),
                ElevatedButton(
                    onPressed: isEmailCorrect == false
                        ? null
                        : () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            Future.delayed(Duration(milliseconds: 500))
                                .then((value) => Get.to(HomePage()));
                            textEditingController.clear();
                            isEmailCorrect = false;
                            setState(() {});
                          },
                    style: ButtonStyle(
                        backgroundColor: isEmailCorrect == false
                            ? MaterialStateProperty.all(
                                Color.fromARGB(255, 41, 41, 41))
                            : MaterialStateProperty.all(Colors.green)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text('Masuk'),
                    ))
              ],
            ),
          ),
        ));
  }

  Padding textFieldValitasi() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: textEditingController,
        onChanged: (validasi) {
          setState(() {
            isEmailCorrect = isEmail(validasi);
          });
          // print(validasi +
          //     ' ' +
          //     isEmail(validasi)
          //         .toString()); // untuk print semua yang diketik user ke debug console
        },
        showCursor: true,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            labelText: "Email",
            labelStyle: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
            hintText: "contoh@gmail.com",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Colors.white,
            ),
            suffixIcon: isEmailCorrect == false
                ? Icon(
                    Icons.close_sharp,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            floatingLabelStyle: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: isEmailCorrect == false ? Colors.red : Colors.green,
                  width: 2),
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
