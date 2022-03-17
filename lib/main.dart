import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pontuacaoDupla1 = 0;
  int pontuacaoDupla2 = 0;

  bool get WinDupla1 => pontuacaoDupla1 >= 12;

  bool get WinDupla2 => pontuacaoDupla2 >= 12;

//funções da primeira dupla:
  void d1increment1() {
    setState(() {
      pontuacaoDupla1 += 1;
    });
  }

  void d1increment3() {
    setState(() {
      pontuacaoDupla1 += 3;
    });
  }

  void d1increment6() {
    setState(() {
      pontuacaoDupla1 += 6;
    });
  }

  void d1increment9() {
    setState(() {
      pontuacaoDupla1 += 9;
    });
  }

//funções da segunda dupla:
  void d2increment1() {
    setState(() {
      pontuacaoDupla2 += 1;
    });
  }

  void d2increment3() {
    setState(() {
      pontuacaoDupla2 += 3;
    });
  }

  void d2increment6() {
    setState(() {
      pontuacaoDupla2 += 6;
    });
  }

  void d2increment9() {
    setState(() {
      pontuacaoDupla2 += 9;
    });
  }

  //funções de zerar:
  void zeraTudo() {
    setState(() {
      pontuacaoDupla1 = 0;
      pontuacaoDupla2 = 0;
    });
  }

  void zeraDupla1() {
    setState(() {
      pontuacaoDupla1 = 0;
    });
  }

  void zeraDupla2() {
    setState(() {
      pontuacaoDupla2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          'Contador Truco',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black26,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 60),
            TextButton(onPressed: zeraTudo, child: Text("Zerar Pontuação")),
            TextButton(onPressed: zeraDupla1, child: Text('Zerar dupla 1')),
            TextButton(onPressed: zeraDupla2, child: Text('Zerar dupla 2')),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fundoTruco.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "DUPLA 2",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w800,
                letterSpacing: 2,
              ),
            ),
            Text(
              WinDupla2 ? "Vencedor !!!" : "$pontuacaoDupla2",
              style: TextStyle(
                fontSize: WinDupla2 ? 50 : 100,
                color: WinDupla2 ? Colors.greenAccent : Colors.white,
                fontWeight: FontWeight.w800,
                letterSpacing: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: WinDupla2 ? null : d2increment1,
                  style: TextButton.styleFrom(
                    backgroundColor: WinDupla2 ? Colors.white.withOpacity(0.8) : Colors.white,
                    fixedSize: const Size(60, 60),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "+1",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(width: 30),
                TextButton(
                  onPressed: WinDupla2 ? null : d2increment3,
                  style: TextButton.styleFrom(
                    backgroundColor: WinDupla2 ? Colors.white.withOpacity(0.8) : Colors.white,
                    fixedSize: const Size(60, 60),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "+3",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: WinDupla2 ? null : d2increment6,
                  style: TextButton.styleFrom(
                    backgroundColor: WinDupla2 ? Colors.white.withOpacity(0.8) : Colors.white,
                    fixedSize: const Size(60, 60),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "+6",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(width: 30),
                TextButton(
                  onPressed: WinDupla2 ? null : d2increment9,
                  style: TextButton.styleFrom(
                    backgroundColor: WinDupla2 ? Colors.white.withOpacity(0.8) : Colors.white,
                    fixedSize: const Size(60, 60),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "+9",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "DUPLA 1",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w800,
                letterSpacing: 2,
              ),
            ),
            Text(
              WinDupla1 ? "Vencedor !!!" : "$pontuacaoDupla1",
              style: TextStyle(
                fontSize: WinDupla1 ? 50 : 100,
                color: WinDupla1 ? Colors.greenAccent : Colors.white,
                fontWeight: FontWeight.w800,
                letterSpacing: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: WinDupla1 ? null : d1increment1,
                  style: TextButton.styleFrom(
                    backgroundColor: WinDupla1 ? Colors.white.withOpacity(0.8) : Colors.white,
                    fixedSize: const Size(60, 60),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "+1",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(width: 30),
                TextButton(
                  onPressed: WinDupla1 ? null : d1increment3,
                  style: TextButton.styleFrom(
                    backgroundColor: WinDupla1 ? Colors.white.withOpacity(0.8) : Colors.white,
                    fixedSize: const Size(60, 60),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "+3",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: WinDupla1 ? null : d1increment6,
                  style: TextButton.styleFrom(
                    backgroundColor: WinDupla1 ? Colors.white.withOpacity(0.8) : Colors.white,
                    fixedSize: const Size(60, 60),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "+6",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(width: 30),
                TextButton(
                  onPressed: WinDupla1 ? null : d1increment9,
                  style: TextButton.styleFrom(
                    backgroundColor: WinDupla1 ? Colors.white.withOpacity(0.8) : Colors.white,
                    fixedSize: const Size(60, 60),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "+9",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
