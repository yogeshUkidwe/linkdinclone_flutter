class JobModel {
  final String title;
  final String company;
  final bool activelyRecruiting;
  final int applicants;
  final String companyProfile;

  JobModel({
    required this.title,
    required this.company,
    required this.activelyRecruiting,
    required this.applicants,
    required this.companyProfile
  });
}