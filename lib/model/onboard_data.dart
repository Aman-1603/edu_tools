class OnBoarding {
  final String title;
  final String image;

  OnBoarding({
    required this.title,
    required this.image,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Welcome to\n EduTools',
    image: 'assets/images/onboarding_image_1.png',
  ),
  OnBoarding(
    title: 'Create your learning habits easily',
    image: 'assets/images/onboarding_image_2.png',
  ),
  OnBoarding(
    title: 'Keep track of your progress with edutools',
    image: 'assets/images/onboarding_image_3.png',
  ),
  OnBoarding(
    title: 'Join a supportive GNU Community',
    image: 'assets/images/onboarding_image_4.png',
  ),
];
