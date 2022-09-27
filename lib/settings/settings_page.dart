import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/components/navBar.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;
  bool valNotify4 = false;

  onChangedFunction1(bool newValue1) {
    setState(() {
      valNotify1 = newValue1;
    });
  }
  
  onChangedFunction2(bool newValue2) {
    setState(() {
      valNotify2 = newValue2;
    });
  }
  
  onChangedFunction3(bool newValue3) {
    setState(() {
      valNotify3 = newValue3;
    });
  }
  
  onChangedFunction4(bool newValue4) {
    setState(() {
      valNotify4 = newValue4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(index: 2),
      backgroundColor: Color(0xf9f9f9ff),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                SizedBox(width: 10,),
                Text("Conta", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
              ],
            ),
            Divider(height: 20, thickness: 1,),
            SizedBox(height: 10,),
            buildAccountOption(context, "Alterar Senha"),
            buildAccountOption(context, "Conteúdo"),
            buildAccountOption(context, "Social"),
            buildAccountOption(context, "Idioma"),
            buildAccountOption(context, "Privacidade e Segurança"),
            SizedBox(height: 20),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                onPressed: () {},
                child: Text("Sair", style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 2.2,
                  color: Colors.red,
                )),
              ),
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                Icon(Icons.volume_up_outlined, color: Colors.blue,),
                SizedBox(width: 10,),
                Text("Notificações", style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ))
              ],
            ),
            Divider(height: 20, thickness: 1),
            SizedBox(height: 10,),
            buildNotificationOption("Ofertas", valNotify1, onChangedFunction1),
            buildNotificationOption("Novidades", valNotify2, onChangedFunction2),
            buildNotificationOption("Recomendações", valNotify3, onChangedFunction3),
            SizedBox(height: 40,),
            Row(
              children: [
                Icon(Icons.more, color: Colors.blue,),
                SizedBox(width: 10,),
                Text("Opções", style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ))
              ],
            ),
            Divider(height: 20, thickness: 1),
            SizedBox(height: 10,),
            buildNotificationOption("Modo Escuro", valNotify4, onChangedFunction4),
          ],
        )
      ),
    );
  }

  Padding buildNotificationOption(String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]
          )),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.blue,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        AlertDialog(
          title: Text(title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Opção 1"),
              Text("Opção 2"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Fechar")
            )
          ],
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            )),
            Icon(Icons.arrow_forward_ios, color: Colors.blue,)
          ],
        ),
      ),
    );
  }
}
