import 'package:flutter/material.dart';
import 'package:student/appbar_global/drawer.dart';
// import 'package:student/Global_widgets/buttons.dart';
// import 'package:student/Global_widgets/graphs/attencence_graph.dart';
// import 'package:student/appbar_global/appbar.dart';

class QuestionBankPage extends StatelessWidget {
  const QuestionBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 11, 29, 1),
      endDrawer: drawer(),
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          'Question Bank',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Go to notification page
            },
            icon: const Icon(
              Icons.notifications,
              size: 30,
            ),
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(left: 25, right: 8, top: 3),
              child: IconButton(
                icon: Transform.scale(
                  scale: 6.2,
                  child: Image.asset(
                    'assets/images/icons/Drawer_icon.png',
                  ),
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            );
          },
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(121, 216, 255, 0.5),
                              blurRadius: 6,
                              spreadRadius: 0,
                              blurStyle: BlurStyle.outer,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25, right: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              hintStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                              ),
                              suffixIcon: Transform.scale(
                                scale: 1.2,
                                child: Image.asset(
                                  'assets/images/icons/question_bank_search.png',
                                  colorBlendMode: BlendMode.darken,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          //* list of question bank to download from
          //1st
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 40, right: 15),
            child: Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Oswaal CBSE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Question Bank',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 2, child: Container()),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: InkWell(
                    splashColor: const Color.fromRGBO(121, 216, 255, 0.5),
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      //* Download PDF
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(121, 216, 255, 0.5),
                            blurRadius: 6,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      width: 90,
                      height: 35,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // 2nd
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 40, right: 15),
            child: Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Arihant CBSE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Question Bank',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 2, child: Container()),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: InkWell(
                    splashColor: const Color.fromRGBO(121, 216, 255, 0.5),
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      //* Download PDF
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(121, 216, 255, 0.5),
                            blurRadius: 6,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      width: 90,
                      height: 35,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //3rd
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 40, right: 15),
            child: Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Xam Idea CBSE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Question Bank',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 2, child: Container()),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: InkWell(
                    splashColor: const Color.fromRGBO(121, 216, 255, 0.5),
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      //* Download PDF
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(121, 216, 255, 0.5),
                            blurRadius: 6,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      width: 90,
                      height: 35,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //4th
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 40, right: 15),
            child: Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Super 20',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Sample Papers',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 2, child: Container()),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: InkWell(
                    splashColor: const Color.fromRGBO(121, 216, 255, 0.5),
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      //* Download PDF
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(121, 216, 255, 0.5),
                            blurRadius: 6,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      width: 90,
                      height: 35,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //5th
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 40, right: 15),
            child: Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Together with',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Question Bank',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 2, child: Container()),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: InkWell(
                    splashColor: const Color.fromRGBO(121, 216, 255, 0.5),
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      //* Download PDF
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(121, 216, 255, 0.5),
                            blurRadius: 6,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      width: 90,
                      height: 35,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //6th
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 40, right: 15),
            child: Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MTG CBSE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Test Series',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 2, child: Container()),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: InkWell(
                    splashColor: const Color.fromRGBO(121, 216, 255, 0.5),
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      //* Download PDF
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(121, 216, 255, 0.5),
                            blurRadius: 6,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      width: 90,
                      height: 35,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //7th
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 40, right: 15),
            child: Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pearson CBSE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Question Bank',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 2, child: Container()),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: InkWell(
                    splashColor: const Color.fromRGBO(121, 216, 255, 0.5),
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      //* Download PDF
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(121, 216, 255, 0.5),
                            blurRadius: 6,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      width: 90,
                      height: 35,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //8th
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 40, right: 15),
            child: Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full Marks CBSE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Question Bank',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 2, child: Container()),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: InkWell(
                    splashColor: const Color.fromRGBO(121, 216, 255, 0.5),
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      //* Download PDF
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(121, 216, 255, 0.5),
                            blurRadius: 6,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      width: 90,
                      height: 35,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //9th
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 40, right: 15),
            child: Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Evergreen CBSE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Question Bank',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 2, child: Container()),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: InkWell(
                    splashColor: const Color.fromRGBO(121, 216, 255, 0.5),
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      //* Download PDF
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(121, 216, 255, 0.5),
                            blurRadius: 6,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      width: 90,
                      height: 35,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //10th
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 40, right: 15),
            child: Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Exam Idea CBSE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Question Bank',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 2, child: Container()),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: InkWell(
                    splashColor: const Color.fromRGBO(121, 216, 255, 0.5),
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      //* Download PDF
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(121, 216, 255, 0.5),
                            blurRadius: 6,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      width: 90,
                      height: 35,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //11th
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 40, right: 15),
            child: Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Goyal Brothers CBSE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Question Bank',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 2, child: Container()),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: InkWell(
                    splashColor: const Color.fromRGBO(121, 216, 255, 0.5),
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      //* Download PDF
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(121, 216, 255, 0.5),
                            blurRadius: 6,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      width: 90,
                      height: 35,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //12th
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 40, right: 15),
            child: Row(
              children: [
                const Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MBD CBSE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Question Bank',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(flex: 2, child: Container()),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: InkWell(
                    splashColor: const Color.fromRGBO(121, 216, 255, 0.5),
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      //* Download PDF
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(121, 216, 255, 0.5),
                            blurRadius: 6,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      width: 90,
                      height: 35,
                      child: const Center(
                        child: Text(
                          'Download',
                          style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //for bottom space
          const SizedBox(height: 50)
        ],
      ),
    );
  }
}
