enum Social {
  google('Google', 'images/google.png'),
  apple('Apple', 'images/apple.png'),
  facebook('Facebook', 'images/fb.png');

  final String name;
  final String img;
  const Social(this.name, this.img);
}
