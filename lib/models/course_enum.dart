enum CourseDesc {
  online('100% online', 'images/globe.svg'),
  deadline('Flexible deadlines', 'images/deadline.svg'),
  instruction('Medium of Instruction: English', 'images/instruction.svg');

  final String name;
  final String img;
  const CourseDesc(this.name, this.img);
}
