import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ssba_task/Controllers/resume_controller.dart';
import 'package:ssba_task/Models/past_experience_model.dart';
import 'package:ssba_task/Models/project.dart';
import 'package:ssba_task/Models/resume_model.dart';
import 'package:ssba_task/View/Widgets/back_navigator.dart';
import 'package:ssba_task/View/Widgets/loading_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResumeController controller = Get.put(ResumeController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: BackNavigator(),
        centerTitle: true,
        title: Text(
          "Resume",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GetBuilder<ResumeController>(builder: (context) {
        if (controller.loader)
          return Loader();
        else {
          ResumeModel? info = controller.resumeInfo;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      info!.name!,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          launch("tel:${info.mobile}");
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(info.mobile!),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          launch("mailto:${info.email}");
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(info.email!),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("   DOB : " + info.dateOfBirth!),
                      InkWell(
                          onTap: () {
                            launch("https://${info.socialMediaLink!}");
                          },
                          child: Container(
                            width: 150,
                            
                            
                            child: Text(info.socialMediaLink!))),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "        " + controller.resumeInfo!.professionalSummary!,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  experienceBuilder(info.experience!),
                  educationInfo(
                      "Pusad Maharashtra", info.collegeName!, info.cgpa!),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 2,
                  ),
                  Text(
                    "Institude Project",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  getProjects(info.collegeProject!),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 2,
                  ),
                  getHobbies(info.hobies!),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 2,
                  ),
                  declaration(info.name!)
                ],
              ),
            ),
          );
        }
      }),
    );
  }

  Widget declaration(String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Declaration",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
            "I hereby Declare that all the above stated information is true to the best of my knowledge."),
        Container(
          alignment: Alignment.bottomRight,
          child: Column(
            children: [
              Text("Name"),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget getHobbies(List<String> hobbies) {
    return Column(
      children: [
        Text(
          "Hobbies",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Wrap(
          direction: Axis.vertical,
          children: hobbies
              .map((hobby) => Row(
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(hobby),
                    ],
                  ))
              .toList(),
        ),
      ],
    );
  }

  Widget educationInfo(String addr, String instituteName, String cgpa) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.topLeft,
          width: 100,
          child: Text(
            addr,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 170,
          child: Text(
            instituteName,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 90,
          alignment: Alignment.topLeft,
          child: Text(
            "CGPA : " + cgpa,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget experienceBuilder(List<Experience> experienceList) {
    return Wrap(
      children: experienceList.map((exp) => experienceTile(exp)).toList(),
    );
  }

  Widget experienceTile(Experience experience) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                experience.designation!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                experience.organizationName!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                // DateFormat.yMMM(DateTime.parse(experience.fromDate!))
                //         .toString() +
                //     " \n " +"",
                // DateFormat.yMMM(DateTime.parse(experience.toDate!))
                //     .toString(),
                experience.fromDate! + "\n" + experience.toDate!,

                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          getProjects(experience.projects!),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 2,
          )
        ],
      ),
    );
  }

  Widget getProjects(List<Project> projects) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Wrap(
            children:
                projects.map((project) => getProjectTile(project)).toList(),
          ),
        ],
      ),
    );
  }

  Widget getProjectTile(Project project) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Role : " + project.role!),
        Text(
          project.projectName!,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text("Description : " + project.description!),
        Text("Key Learnings : " + project.keySkills!),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
