import 'package:flutter/material.dart';
import 'package:study_m8/models/payment_enum.dart';
import 'package:study_m8/ui/views/payment/payment_tile.dart';
import 'package:study_m8/ui/widgets/custom_button.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  Payment selectedPaymentMethod = Payment.google;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Enroll Course',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30.0,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 23.0),
                          child: Text(
                            'Please select a payment method',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        PaymentTile(
                            payment: Payment.paypal,
                            selectedPaymentMethod: selectedPaymentMethod,
                            onChanged: (value) =>
                                setState(() => selectedPaymentMethod = value)),
                        PaymentTile(
                            payment: Payment.google,
                            selectedPaymentMethod: selectedPaymentMethod,
                            onChanged: (value) =>
                                setState(() => selectedPaymentMethod = value)),
                        PaymentTile(
                            payment: Payment.mastercard,
                            selectedPaymentMethod: selectedPaymentMethod,
                            onChanged: (value) =>
                                setState(() => selectedPaymentMethod = value)),
                        PaymentTile(
                            payment: Payment.apple,
                            selectedPaymentMethod: selectedPaymentMethod,
                            onChanged: (value) =>
                                setState(() => selectedPaymentMethod = value))
                      ],
                    )
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                      buttonText: 'Enroll Now - \$50',
                      onPressed: () {},
                      textSize: 16.0),
                )
              ],
            )),
      ),
    );
  }
}
