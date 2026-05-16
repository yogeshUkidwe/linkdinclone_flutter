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
            ),

            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 14,
              color: linkedInLightGreyDividerLineClr,
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Top Job Picks for You",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  _buildJobsList(recommendedJobs),
                  const SizedBox(height: 10),
                  _viewAllJobsButton(),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 8,
              color: linkedInLightGreyDividerLineClr,
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "More Jobs for You",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  _buildJobsList(moreJobsForYou),
                  const SizedBox(height: 10),
                  _viewAllJobsButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _singleCategoryItem({
    required String title,
    required VoidCallback onTap,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? linkedInBlue0077B5 : linkedInWhiteCardColor,
          border: Border.all(
            color: isSelected ? linkedInBlue0077B5 : linkedInMediumGrey86888ATextColor,
            width: 1,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? linkedInWhiteCardColor : linkedInMediumGrey86888ATextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildJobsList(List<JobModel> jobs) {
    return Column(
      children: jobs.map((job) {
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: linkedInLightGreyDividerLineClr.withOpacity(.6),
                    ),
                    child:
                        Image.network(job.companyProfile, fit: BoxFit.cover)),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(job.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                           Icon(Icons.bookmark_border,
                              size: 30, color: linkedInMediumGrey86888ATextColor),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(job.company, style: const TextStyle(fontSize: 15)),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Visibility(
                              visible: job.activelyRecruiting,
                              child: const Icon(FontAwesomeIcons.a,
                                  size: 20, color: Colors.green)),
                          const SizedBox(width: 8),
                          Text(
                              job.activelyRecruiting
                                  ? "Actively recruiting"
                                  : "India (Remote)",
                              style:  TextStyle(
                                  fontSize: 12,
                                  color: linkedInMediumGrey86888ATextColor)),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                text:  job.activelyRecruiting ?"Promoted - ":"2 day ago",
                                style:  TextStyle(
                                    fontSize: 12,
                                    color: linkedInMediumGrey86888ATextColor),
                                children: [],
                              ),
                            ),
                          ),
                          Container(
                              height: 16,
                              width: 16,
                              child: Image.asset("assets/app_logo.png")),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                text: "Easy Apply",
                                style:  TextStyle(
                                    fontSize: 12,
                                    color: linkedInMediumGrey86888ATextColor),
                                children: [],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                       Divider(color: linkedInMediumGrey86888ATextColor),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      }).toList(),
    );
  }

  Widget _jobsTopItems({required String title, required IconData icon}) {
    return Row(
      children: [
        Icon(icon, size: 30, color: linkedInMediumGrey86888ATextColor),
        const SizedBox(width: 10),
        Text(title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _viewAllJobsButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Show All",
            style: TextStyle(
                fontSize: 18,
                color: linkedInBlue0077B5,
                fontWeight: FontWeight.bold)),
        const SizedBox(width: 10),
        Icon(Icons.arrow_forward, size: 25, color: linkedInBlue0077B5),
      ],
    );
  }
}
