import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
main(){
  runApp(ProviderScope(child: MaterialApp(home: Home())));
}

//選べれたラジオボタンのID
final radioIdProvider = StateProvider<String?>(
  (ref){
    return null;
  },
);

//選べれたチェックボックスIDたち
final checkedIdsProvider = StateProvider<Set<String>>(
  (ref){
    return {};
  },
);

class Home extends ConsumerWidget{
  const Home({super.key});

  @override 
  Widget build(BuildContext context, WidgetRef ref){
    //ラジオボタンIDに合わせて画面を変化
    final radioId = ref.watch(radioIdProvider);
    //チェックボックスに合わせる
    final checkIds = ref.watch(checkedIdsProvider);

    //ラジオボタン押され時の関数
    onChangedRadio(String? id){
      ref.read(radioIdProvider.notifier).state = id;
    }

    //チェックボタン押され時の関数
    onChangedCheckbox(String id){
      final newSet = Set.of(checkIds);

      if(newSet.contains(id)){
        //チェック済みなら削除
        newSet.remove(id);
      }else{
        //未チェックなら追加
        newSet.add(id);
      }
      ref.read(checkedIdsProvider.notifier).state = newSet;
    }
    return Scaffold(
      body: Column(
      children:[
        //radio
        RadioListTile(
          value:'A',
          groupValue: radioId,
          onChanged:onChangedRadio,
          title: const Text('ラジオA'),
        ),

        RadioListTile(
          value:'B',
          groupValue: radioId,
          onChanged:onChangedRadio,
          title: const Text('ラジオB'),
        ),

        RadioListTile(
          value:'C',
          groupValue: radioId,
          onChanged:onChangedRadio,
          title: const Text('ラジオC'),
        ),

        //チェック
        CheckboxListTile(
          onChanged:(checked) => onChangedCheckbox('A'),
          value: checkIds.contains('A'),
          title: const Text('ラジオA'),
        ),

        CheckboxListTile(
          onChanged:(checked) => onChangedCheckbox('B'),
          value:checkIds.contains('B'),
          title: const Text('ラジオB'),
        ),

        CheckboxListTile(
          onChanged:(checked) => onChangedCheckbox('C'),
          value:checkIds.contains('C'),
          title: const Text('ラジオC'),
        ),
      ],
    ),
    );
  }
}