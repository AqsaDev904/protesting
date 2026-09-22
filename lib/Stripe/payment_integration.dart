import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;

class PaymentIntegration extends StatefulWidget {
  const PaymentIntegration({super.key});

  @override
  State<PaymentIntegration> createState() => _PaymentIntegrationState();
}

class _PaymentIntegrationState extends State<PaymentIntegration> {
  bool isloading = false;
  Future<void> makePayment({required String paymentId}) async {
    setState(() {
      isloading = true;
    });
    try {
      final response = await http.post(
        Uri.parse('http://127.0.0.1:8000/api/payments/create-payment-intent'),
        body: {"product_id": paymentId},
        headers: {"Accept": "application/json"},
      );
      final result = jsonDecode(response.body);
      log("response body : $result");
      if (response.statusCode == 200) {
        final String clientSecret = result['client_secret'];

        await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: clientSecret,
            merchantDisplayName: 'My Flutter Store',
          ),
        );

        await Stripe.instance.presentPaymentSheet();
      } else {
        final String errorMessage = result['message'];
        log(" backend error: $errorMessage");
      }
    } catch (e) {
      log('error: $e');
    } finally {
      setState(() {
        isloading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stripe Payment integraion")),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,

          children: [
            Center(
              child: OutlinedButton(
                onPressed: () => isloading ? null : makePayment(paymentId: "1"),
                child: isloading ? CircularProgressIndicator() : Text("Buy"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
