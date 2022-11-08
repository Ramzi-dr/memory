import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final TextEditingController _playerNameController = TextEditingController();
String playerName = '';

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('mEmOrY', style: TextStyle(color: Colors.blue)),
      ),
      body: Container(
        color: Colors.amber[400],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 40, 8, 40),
          child: Column(children: [
            const Text('Hallo'),
            const SizedBox(height: 10),
            Text(playerName),
            const SizedBox(height: 20),
            TextField(
              cursorColor: Colors.amber[800],
              maxLength: 10,
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              controller: _playerNameController,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'wAt iS JoUw nAam?',
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  playerName = _playerNameController.text;
                });
                print(_playerNameController.text);
              },
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.teal, Colors.red],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(5, 5),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Press',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
