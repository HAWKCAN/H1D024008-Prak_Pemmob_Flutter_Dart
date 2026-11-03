import 'package:flutter/material.dart';
import 'package:flutter_project/column_widget.dart';
import 'package:flutter_project/hello_world.dart';
import 'package:flutter_project/row_widget.dart';
import 'package:flutter_project/ui/produk_detail.dart';
import 'package:flutter_project/ui/produk_page.dart';
import 'package:flutter_project/ui/produk_form.dart';
import 'package:flutter_project/ui/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aplikasi Flutter Pertama",
      home: LoginPage(
      ),
    );
  }
}