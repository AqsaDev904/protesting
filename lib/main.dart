import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:protesting/Stripe/payment_integration.dart';

void main() {
  Stripe.publishableKey = "pk_test_51T2v5k84q2RKJ6Nn2pbvNu2o4T7B5OMU9Mf9VCUkUaamm6dy3fC1pXqR1ynZ4LUfweTKoMvc0FUtfKPkZe5Kkfj5008m8VyUKR" ; 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: PaymentIntegration(),
      
        );
  }


}