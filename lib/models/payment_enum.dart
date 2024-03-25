enum Payment {
  google('Google Pay', 'images/google.png'),
  apple('Apple Pay', 'images/applePay.png'),
  paypal('Paypal', 'images/PayPal.png'),
  mastercard('MasterCard', 'images/mastercard.png');

  final String name;
  final String img;
  const Payment(this.name, this.img);
}
