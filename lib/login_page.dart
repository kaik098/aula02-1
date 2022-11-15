import 'package:aula02/widget/eleveted_button_custom.dart';
import 'package:aula02/widget/text_form_field_custom.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    print("REGISTRE-SE");
    return Scaffold(
      body: SizedBox(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.title,
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Text("Prencha os dados para se cadastra"),
              const SizedBox(height: 50),
              const SizedBox(height: 50),
              const SizedBox(
                height: 25,
              ),
              TextFormFieldCustom(
                description: 'E-mail',
                prefixIcon: const Icon(Icons.person, color: Colors.blue),
              ),
              const SizedBox(height: 25),
              TextFormFieldCustom(
                obscureText: obscureText,
                description: 'Senha',
                prefixIcon: const Icon(Icons.key, color: Colors.blue),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.red,
                height: 100,
                thickness: 5,
                indent: 10,
                endIndent: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Esqueceu a senha?",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const ElevetedButtonCustom(description: "Login"),
              const SizedBox(
                height: 4,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 36),
                  children: <TextSpan>[
                    TextSpan(text: 'Ainda não tem conta? '),
                    TextSpan(
                      text: 'Clique aqui\n para criar conta',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ],
                ),
                textScaleFactor: 0.5,
              )
            ],
          ),
        ),
      ),
    );
  }
} //125
