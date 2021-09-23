import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: alert,
        child: const Text('Appuie !'),
        style: ElevatedButton.styleFrom(
          primary: Colors.teal,
          onPrimary: Colors.white,
          textStyle: const TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  //snackbar
  void snack() {
    SnackBar snackBar = const SnackBar(
      content: Text('Je suis une snackbar', textScaleFactor: 1.5),
      duration: Duration(seconds: 5),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar); //Scaffold.of (old)
  }

  //pop-up
  Future<Null> alert() async {
    return showDialog(
      context: context,
      barrierDismissible: false, //appuie externe pour sortir
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Ceci est une alerte', textScaleFactor: 1.5),
          content: const Text("Houston on a un problème! On continue ?"),
          contentPadding: const EdgeInsets.all(5),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                print('Abort');
                Navigator.pop(context);
              },
              child: const Text("Annuler", style: TextStyle(color: Colors.red)),
            ),
            TextButton(
              onPressed: () {
                print('Proceed');
                Navigator.pop(context);
              },
              child: const Text("Continuer", style: TextStyle(color: Colors.green)),
            ),
          ],
        );
      },

    );
  }

}