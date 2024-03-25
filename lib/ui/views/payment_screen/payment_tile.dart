import 'package:flutter/material.dart';
import 'package:study_m8/models/payment_enum.dart';

class PaymentTile extends StatelessWidget {
  const PaymentTile({
    super.key,
    required this.payment,
    required this.onChanged,
    required this.selectedPaymentMethod,
  });

  final Payment payment;
  final ValueChanged onChanged;
  final Payment selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onChanged(payment);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xffEEEDED),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(payment.img)),
                  Text(payment.name, style: const TextStyle(fontSize: 16.0))
                ],
              ),
              Transform.scale(
                  scale: 1.6,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Radio(
                        value: payment,
                        groupValue: selectedPaymentMethod,
                        onChanged: onChanged),
                  )),
            ],
          ),
        ));
  }
}
