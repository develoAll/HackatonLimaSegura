import 'package:flutter/material.dart';
import 'package:maqueta_prueba/registro.dart';

import 'menu.dart';

class InicioPage extends StatelessWidget {

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
                      height: 300,
                      width: 400,
                      child: Text("imagen Logo Lima"),
                      margin: EdgeInsets.only(top: 15, bottom: 15),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFF5F3F3)
                          ),
                          width: 280,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "  Usuario ",
                                isDense: true,
                                border: InputBorder.none
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFF5F3F3)
                          ),
                          width: 280,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "  Contraseña ",
                                isDense: true,
                                border: InputBorder.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1),
                    width: 310,
                    child: Column(
                      children: [
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          value: false,
                          onChanged: (value){

                          },
                          title: Text("Guardar mi contraseña"),
                        ),
                        Container(
                          width: 280,
                          margin: const EdgeInsets.only(top: 60.0),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Menu()),
                              );
                            },
                            color: Color(0xFF00A39C),
                            child: Text("Ingresar", style: TextStyle(fontSize: 15, color: Colors.white),),
                          ),
                        ),
                        Container(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Registro()),
                              );
                            },
                            child: Text("No estas registrado? Registrate aqui",style: TextStyle(fontSize: 13),),
                          ),
                          padding: EdgeInsets.only(bottom: 7),
                          width: 280,
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 60.0),
                          width: 280,
                          child: Text("Jirón de la Unión 300 - Jirón Conde de Superunda 141 - Cercado de Lima", style: TextStyle(fontSize: 8)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 280,
                          child: Text("Teléfono 632-1300", style: TextStyle(fontSize: 8)),
                        ),
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
}