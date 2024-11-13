import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Viagens"),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset("imagens/coliseu-a-noite.jpeg"),
                      Positioned(
                        left: 10,
                        bottom: 40,
                        child: Text(
                          "Roma",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Text(
                          "Coliseu",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.blue,
                                  size: 24,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Quero ir",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue),
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Colors.blue,
                                  size: 24,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Já fui",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue),
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                Icon(
                                  Icons.share,
                                  color: Colors.blue,
                                  size: 24,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Compartilhar",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue),
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.blue,
                                  size: 24,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Avaliação",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                          "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                          "Vivamus non blandit tellus. Etiam sagittis a leo nec fermentum. Aliquam urna odio, imperdiet et interdum ut. "
                          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pessoas encontradas",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.filter_list,
                                    color: Colors.blue,
                                    size: 24,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Filtrar",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: Colors.grey,
                      size: 40,
                    ),
                    Icon(
                      Icons.account_circle,
                      color: Colors.grey,
                      size: 40,
                    ),
                    Icon(
                      Icons.account_circle,
                      color: Colors.grey,
                      size: 40,
                    ),
                    Icon(
                      Icons.account_circle,
                      color: Colors.grey,
                      size: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
