import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaFormulario(),
    );
  }
}

class TelaFormulario extends StatelessWidget {

  TextEditingController txtnome = TextEditingController();
  TextEditingController txtidade = TextEditingController();
  TextEditingController txtemail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Entrada de Dados')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextField(
                controller: txtnome,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Informe o nome"),
                keyboardType: TextInputType.name,
              ),
              TextField(
                controller: txtidade,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Informe Sua Idade"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: txtemail,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Informe o E-mail"),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
             
                  if (txtemail.text.isEmpty ||
                      txtidade.text.isEmpty ||
                      txtnome.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('ERROR'),
                          content: Text('Preencha todos os Campos'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  } else {
         
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Dados Confirmados'),
                          content: Text(
                            'Nome: ${txtnome.text}\nIdade: ${txtidade.text}\nE-mail: ${txtemail.text}',
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
