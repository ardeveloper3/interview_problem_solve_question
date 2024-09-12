import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FunctionQuestion(),
    );
  }
}



class FunctionQuestion extends StatelessWidget {
  const FunctionQuestion({super.key});

  @override
  Widget build(BuildContext context) {

    int longArraySum(
        List<int> nums,// give here a list of integers
        int target
        ){
      Map<int,int> prefixSum = {};

      int sum = 0;
      int maxlength = 0;

      for(int i =0; i <nums.length; i++){
        sum += nums[i];
        if ( sum == target){
          maxlength = i +1;
        }

        if(prefixSum.containsKey(sum - target)){
          maxlength = max(maxlength, i - prefixSum[sum - target]!);
        }
        if(!prefixSum.containsKey(sum)){
          prefixSum[sum] = i;
        }
      }

      return maxlength;
    }



    return Scaffold();
  }
}

