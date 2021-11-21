import 'package:flutter/material.dart';
import 'package:maqueta_prueba/Segundo.dart';

class InicioPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  width: 200,
                  child: Row(
                    children: [
                      Icon(Icons.lock),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Usuario",
                            isDense: true,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                  child: Text("Hola mundo"),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.green,
                  child: Text("Hola mundo"),
                ),
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.red,
                child: Text("Hola mundo"),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Segundo()),
                  );
                },
                color: Colors.amber,
                child: Text("Button", style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold)),
              ),

            ],
          ),
        ),
      ),
    );
  }

}
