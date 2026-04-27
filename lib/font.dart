//色々苦しんだ。1番のショックはGoogle Fontの制限が思ったりきついこと
//ずっと入れようとしてたのに入らなかった。ぴえん
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
//メイン関数
/*main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString(
      'google_fonts/OFL.txt',
    );
    yield LicenseEntryWithLineBreaks(
      ['google_fonts'],
      license,
    );
  });
  const app = MyApp();
  runApp(app);
}*/
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