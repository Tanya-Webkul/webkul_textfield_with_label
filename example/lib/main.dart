import 'package:flutter/material.dart';
import 'package:webkul_textfield_with_label/utils/input_decoration.dart';
import 'package:webkul_textfield_with_label/webkul_textfield_with_label.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController? emailController;
  TextEditingController? pwdController;
  bool isPasswordVisible = false;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailController = TextEditingController();
    pwdController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Hello Again !!",
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Text(
                    "Welcome back you've been missed!!",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  TextFieldWithLabel(
                      controller: emailController,
                      labelText: "Email",
                      inputDecorationTextField: InputDecorationTextField(
                        prefixIconImage: const Icon(Icons.person),
                        hint: 'Enter Username',
                        filledColor: Colors.white,
                        isEnabled: true,
                        isFilled: true,
                        contentEdgePadding: const EdgeInsets.all(14.0),
                        focusedInputBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8.0)),
                        enabledInputBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8.0)),
                        errorInputBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      validator: (value) {
                        if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value ?? "")) {
                          return "Incorrect Email";
                        }
                        return null;
                      }),
                  TextFieldWithLabel(
                    controller: pwdController,
                    obscureText: isPasswordVisible ? false : true,
                    maxLines: 1,
                    labelText: 'Password',
                    inputDecorationTextField: InputDecorationTextField(
                      prefixIconImage: const Icon(Icons.lock),
                      isFilled: true,
                      hint: 'Enter Password',
                      filledColor: Colors.white,
                      isEnabled: true,
                      suffixIconImage: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          child: Icon(isPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      contentEdgePadding: const EdgeInsets.all(14.0),
                      focusedInputBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8.0)),
                      enabledInputBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8.0)),
                      errorInputBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    validator: (value) {
                      if (RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$')
                          .hasMatch(value ?? "")) {
                        return "Please add a Strong Password";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink,
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                debugPrint("Email-->${emailController?.text}");
                              }
                            },
                            child: const Text("Login"))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
