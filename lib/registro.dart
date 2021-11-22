import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 100,
                    child: Text("imagen Logo Lima"),
                    color: Colors.blue,
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                  ),
                ),
                cuerpo("nombres"),
                cuerpo("Apellido Paterno"),
                cuerpo("Apellido Materno"),
                cuerpo("Tipo documento"),
                cuerpo("Correo"),
                cuerpo("Contraseña"),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 310,
                  child: Column(
                    children: [
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                          value: false,
                          onChanged: (value){

                          },
                        title: Text("Acepto terminos y condiciones"),
                      ),
                      MaterialButton(
                        onPressed: () {
                          print("Registrarse");
                        },
                        color: Color(0xFF00A39C),
                        child: Text("Registrarse", style: TextStyle(fontSize: 15, color: Colors.white),),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
  Widget cuerpo(String titulo){
    return
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 5),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 7),
              width: 280,
              child: Text(titulo),
            ),
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F3F3)
              ),
              width: 280,
              child: TextFormField(
                decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none
                ),
              ),
            ),
          ],
        ),
      );
  }
}

