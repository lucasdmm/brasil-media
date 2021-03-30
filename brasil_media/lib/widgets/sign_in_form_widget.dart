import 'package:flutter/material.dart';

class SignInFormWidget extends StatefulWidget {
  @override
  _SignInFormWidgetState createState() => _SignInFormWidgetState();
}

class _SignInFormWidgetState extends State<SignInFormWidget> {
  bool _obscure = true;
  var emailCtl = TextEditingController();
  var passwordCtl = TextEditingController();

  bool validlogin() {
    if (emailCtl.text.isNotEmpty && passwordCtl.text.isNotEmpty)
      return true;
    else
      return false;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white54,
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(children: [
          TextField(
            decoration: InputDecoration(labelText: 'Email'),
            controller: emailCtl,
            onChanged: (_) => setState(() {}),
          ),
          TextField(
            obscureText: _obscure,
            onChanged: (_) => setState(() {}),
            decoration: InputDecoration(
                labelText: 'Password',
                suffix: IconButton(
                    icon: Icon(
                      !_obscure
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Theme.of(context).primaryColor,
                      size: 20,
                    ),
                    onPressed: () => setState(() => _obscure = !_obscure))),
            controller: passwordCtl,
          ),
          SizedBox(height: height * 0.03),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(validlogin()
                    ? Theme.of(context).primaryColor
                    : Colors.grey),
              ),
              child: Container(
                  width: width * 0.55,
                  height: height * 0.03,
                  child: Center(
                      child: Text(
                    'ENTRAR',
                    style: TextStyle(color: Colors.white),
                  ))),
              onPressed: validlogin() ? () => Navigator.pop(context) : null)
        ]),
      ),
    );
  }
}
