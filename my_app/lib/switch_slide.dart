import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/*main(){
  const app = MaterialApp(home: Home());
  const scope = ProviderScope(child: app);
  runApp(scope);
}
//onかoff
final isOnProvider = StateProvider((ref){
  return true;
});
//スライダーの数値
final valueProvider = StateProvider((ref){
  return 0.0;
});
//スライダーの範囲
final rangeProvider = StateProvider<RangeValues>((ref){
  return const RangeValues(0.1, 0.9);

});*/

class Home extends ConsumerWidget{
  const Home({super.key});

  @override 
  Widget build(BuildContext context, WidgetRef ref){
    //トグルスイッチ
    final isOn = ref.watch(isOnProvider);
    final toggleSwitch = Switch(
      value: isOn,
      onChanged: (isOn){
        ref.read(isOnProvider.notifier).state = isOn;
      },
      activeThumbColor: Colors.blue,
      activeTrackColor: Colors.green,
      inactiveTrackColor: Colors.grey,
      inactiveThumbColor: Colors.black,
    );

    //スライダー
    final value = ref.watch(valueProvider);
    final slider = Slider(
      value:value,
      onChanged: (value){
        ref.read(valueProvider.notifier).state = value;
      },
      thumbColor: Colors.blue,
      activeColor: Colors.green,
      inactiveColor: Colors.black12,
    );
    //レンジ
    final range = ref.watch(rangeProvider);
    final rangeSlider = RangeSlider(
      values: range,
      onChanged: (values){
        ref.read(rangeProvider.notifier).state = values;
      },
      activeColor: Colors.blue,
      inactiveColor: Colors.green,
    );
    //赤コンテナ
    final redBox = Container(
      color: Colors.red,
      width: value * 300,
      height: 50,
    );

    //オレンジコンテナ
    final orangeBox = Container(
      color: Colors.orange,
      width: value * 400,
      height: 40,
    );
    final con = Container(width: value * 300, height: 20, color: Colors.blue);

    return Scaffold(
      body: Center(
        child: Column(
          children:[toggleSwitch, slider, rangeSlider, con, redBox, orangeBox],
        ),
      ),

    );
  }

}