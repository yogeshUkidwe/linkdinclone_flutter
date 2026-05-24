import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/job_model.dart';
import '../../theme/styles.dart';

class JobPage extends StatefulWidget {
  JobPage({Key? key}) : super(key: key);

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  int _selectedCategoryIndex =4 ;
  List<JobModel> recommendedJobs = [
    JobModel(
        title: "Software Engineer",
        company: "Google",
        activelyRecruiting: false,
        applicants: 10,
        companyProfile: "https://logo.clearbit.com/google.com"),
    JobModel(
        title: "Product Manager",
        company: "Facebook",
        activelyRecruiting: true,
        applicants: 5,
        companyProfile: "https://logo.clearbit.com/facebook.com"),
    JobModel(
        title: "Data Scientist",
        company: "Amazon",
        activelyRecruiting: false,
        applicants: 2,
        companyProfile: "https://logo.clearbit.com/amazon.com"),
  ];

  List<JobModel> moreJobsForYou = [
    JobModel(
        title: "iOS Developer",
        company: "Apple",
        activelyRecruiting: false,
        applicants: 3,
        companyProfile: "https://logo.clearbit.com/apple.com"),
    JobModel(
        title: "Backend Developer",
        company: "Microsoft",
        activelyRecruiting: false,
        applicants: 7,
        companyProfile: "https://logo.clearbit.com/microsoft.com"),
    JobModel(
        title: "UI/UX Designer",
        company: "Adobe",
        activelyRecruiting: false,
        applicants: 4,
        companyProfile: "https://logo.clearbit.com/adobe.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  _singleCategoryItem(
                    title: "My Jobs",
                    onTap: () {
                      setState(() {
                        _selectedCategoryIndex = 0;
                      });
                    },
                    isSelected: _selectedCategoryIndex == 0,
                  ),
                  const SizedBox(width: 10),
                  _singleCategoryItem(
                    title: "Preferences",
                    onTap: () {
                      setState(() {
                        _selectedCategoryIndex = 1;
                      });
                    },
                    isSelected: _selectedCategoryIndex == 1,
                  ),
                  const SizedBox(width: 10),
                  _singleCategoryItem(
                    title: "Post a free job",
                    onTap: () {
                      setState(() {
                        _selectedCategoryIndex = 2;
                      });
                    },
                    isSelected: _selectedCategoryIndex == 2,
                  ),
                ],
              ),
