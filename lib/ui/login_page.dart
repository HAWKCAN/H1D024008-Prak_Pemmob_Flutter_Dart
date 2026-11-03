import 'package:flutter/material.dart';
import 'package:flutter_project/ui/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget{
  const LoginPage ({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State <LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  var namuser;

  void _saveUsername() async{
    //inisialisasi Sahre Preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //simpan username ke local storage
    prefs.setString('username',_usernameController.text);
  }

  _showInput(namacontroller,placeholder,isPassword){
    return TextField(
      controller:namacontroller,
      obscureText:isPassword,
      decoration: InputDecoration(
        hintText: placeholder
      )
    );
  }

  _showDialog(pesan,alamat){
    return showDialog(
      context: context,
      builder:(context){
        return AlertDialog(
          title: Text(pesan),
          actions:[
            TextButton(
              child:const Text('OK'),
              onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>alamat,)
                );
              }
            )
          ]
        );
      }

    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text('Login'),
      ),
      body : Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _showInput(_usernameController, 'Masukan Username', false),
            _showInput(_passwordController, 'Masukan Password', true),
            ElevatedButton(onPressed: (){
              if (_usernameController.text == 'admin' &&
                  _passwordController.text == 'admin') {
                _saveUsername();
                _showDialog('anda berhasil login', const HomePage());

              }else{
                _showDialog('username dan password salah', const LoginPage());
              }
            }, child: const Text('Login'))
          ],
        ),
      )
    );
  }
}