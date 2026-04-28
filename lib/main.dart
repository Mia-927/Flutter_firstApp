import 'package:flutter/material.dart';
/*import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';*/
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
//メイン関数
main() {
  const flavor = String.fromEnvironment('flavor');
  if(flavor == 'dev'){
    //devのときだけ
  }
  if(flavor == 'stg'){
    //stgのときだけ
  }
  if(flavor == 'prd'){
    //prdのときだけ
  }
  const app = MyApp();
  runApp(app);
}
//アプリ本体
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
//ホーム画面
class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
          child: Text('ねこ',
          style: GoogleFonts.notoSansJp(
            fontSize: 50,
            fontWeight: FontWeight.w600,
          ),
          ),
        ),
      );
  }
}