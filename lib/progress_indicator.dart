import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

/*main(){
  const app = MaterialApp(home: ProgressIndicator());
  const scope = ProviderScope(child: app);
  runApp(scope);
}*/

//どのくらい進んだかの％
final percentProvider = StateProvider((ref){
  //最初は０％から
  return 0.00;
});

//ホーム画面
class ProgressIndicator extends ConsumerWidget{
  const ProgressIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref){
    //パーセント
    final percent = ref.watch(percentProvider);
    //丸型インジケーター
    final circular = CircularPercentIndicator(
      percent: percent,
      backgroundColor: Colors.purple,
      progressColor: Colors.blue,
      radius: 30,
      lineWidth: 20,
      center: Text('${percent * 100}%'),
      animation: true,
      animationDuration: 1000,
      animateFromLastPercent: true,
    );
      //棒型インジケーター
    final linear = LinearPercentIndicator(
      percent: percent,
      backgroundColor: Colors.purple,
      progressColor: Colors.blue,
      alignment: MainAxisAlignment.center,
      lineHeight:5,
      width: 200,
      center: Text('${percent * 100}%'),
    );

    //
    final button = ElevatedButton(
      onPressed: () => onPressed(ref),
      child: const Text('スタート'),
    );
        
    final column = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        circular,
        linear,
        button,
      ],
    ); 

    return Scaffold(
      body: column,
    );
  }

  //ボタンを押した時の関数
  onPressed(WidgetRef ref) async{
    //1秒待つ
    await Future.delayed(const Duration(seconds: 1));
    //２０％
    ref.read(percentProvider.notifier).state = 0.20;
    //1秒待つ
    await Future.delayed(const Duration(seconds: 1));
    //４０％
    ref.read(percentProvider.notifier).state = 0.40;
    //1秒待つ
    await Future.delayed(const Duration(seconds: 1));
    //６０％
    ref.read(percentProvider.notifier).state = 0.60;
    //1秒待つ
    await Future.delayed(const Duration(seconds: 1));
    //８０％
    ref.read(percentProvider.notifier).state = 0.80;
    //1秒待つ
    await Future.delayed(const Duration(seconds: 1));
    //１００％
    ref.read(percentProvider.notifier).state = 1.0;
  }
}