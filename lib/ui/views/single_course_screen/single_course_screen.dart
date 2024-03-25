import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:study_m8/main.dart';
import 'package:study_m8/models/course_desc.dart';
import 'package:study_m8/models/course_skills.dart';
import 'package:study_m8/ui/views/single_course_screen/course_short_descc.dart';
import 'package:study_m8/ui/widgets/custom_button.dart';

class SingleCourseScreen extends StatefulWidget {
  const SingleCourseScreen({super.key});

  @override
  State<SingleCourseScreen> createState() => _SingleCourseScreenState();
}

class _SingleCourseScreenState extends State<SingleCourseScreen> {
  double rating = 4.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 28.0,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              icon: const Icon(
                Icons.share_outlined,
                size: 28.0,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('images/courseImage.png'),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text('Introduction to UI Design',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.w500))),
                  const Text(
                    'Course Tutor: Steve Holmes',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        rating.toString(),
                        style: const TextStyle(fontSize: 16.0),
                      ),
                      RatingBar.builder(
                        itemSize: 23,
                        initialRating: rating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.fromLTRB(4.0, 0.0, 0.0, 0.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (myRating) {
                          setState(() {
                            rating = myRating;
                          });
                        },
                      ),
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 8.0),
                      child: Text(
                        'About this course',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )),
                  const ReadMoreText(
                    'Design principles are a set of guidelines that help designers create effective and aesthetically pleasing designs.\nThese principles can be applied to various types of designs, including graphic design, web design,and UX design, to create designs that are visually appealing and functional, and easy to use. ',
                    trimLines: 6,
                    style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.normal),
                    colorClickableText: mainColor,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Read less',
                    delimiter: '... ',
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        children: [
                          for (var el in CourseDesc.values)
                            CourseShortDesc(desc: el)
                        ],
                      )),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        'Skills you will gain',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      )),
                  Wrap(spacing: 8.0, runSpacing: 16.0, children: [
                    for (var el in skills)
                      CustomButton(
                        buttonText: el,
                        textSize: 16.0,
                        radius: 5.0,
                        onPressed: () {},
                      )
                  ]),
                  const Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                      child: Text(
                        'Course Instructor',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      )),
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage('images/photo.png'),
                            minRadius: 60.0,
                          ),
                          const Column(
                            children: [
                              Text(
                                'Esther Howard',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('UI/UX Design Expert',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal))
                            ],
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 28.0,
                            ),
                            onPressed: () {},
                          )
                        ],
                      )),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                        buttonText: 'Enroll Now - \$50',
                        onPressed: () {
                          Navigator.pushNamed(context, '/payment');
                        },
                        textSize: 16.0),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
