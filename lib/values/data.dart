part of 'values.dart';

class CertificationData {
  CertificationData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.url,
    required this.awardedBy,
  });

  final String image;
  final double imageSize;
  final String url;
  final String title;
  final String awardedBy;
}

class NoteWorthyProjectDetails {
  NoteWorthyProjectDetails({
    required this.projectName,
    required this.isOnPlayStore,
    required this.isPublic,
    required this.technologyUsed,
    required this.isWeb,
    required this.isLive,
    this.projectDescription,
    this.playStoreUrl,
    this.webUrl,
    this.hasBeenReleased,
    this.gitHubUrl,
  });

  final String projectName;
  final bool isPublic;
  final bool isOnPlayStore;
  final bool isWeb;
  final String? projectDescription;
  final bool isLive;
  final bool? hasBeenReleased;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? webUrl;
  final String? technologyUsed;
}

class ExperienceData {
  ExperienceData({
    required this.position,
    required this.roles,
    required this.location,
    required this.duration,
    required this.company,
    this.companyUrl,
  });

  final String company;
  final String? companyUrl;
  final String location;
  final String duration;
  final String position;
  final List<String> roles;
}

class SkillData {
  SkillData({
    required this.skillName,
    required this.skillLevel,
  });

  final String skillName;
  final double skillLevel;
}

class SubMenuData {
  SubMenuData({
    required this.title,
    this.isSelected,
    this.content,
    this.skillData,
    this.isAnimation = false,
  });

  final String title;
  final String? content;
  final List<SkillData>? skillData;
  bool isAnimation;
  bool? isSelected;
}

class Data {
  static List<NavItemData> menuItems = [
    NavItemData(name: StringConst.HOME, route: StringConst.HOME_PAGE),
    NavItemData(name: StringConst.ABOUT, route: StringConst.ABOUT_PAGE),
    NavItemData(name: StringConst.WORKS, route: StringConst.PROJECTS_PAGE),
    NavItemData(
      name: StringConst.EXPERIENCE,
      route: StringConst.EXPERIENCE_PAGE,
    ),
    NavItemData(
      name: StringConst.CERTIFICATIONS,
      route: StringConst.CERTIFICATION_PAGE,
    ),
    // NavItemData(name: StringConst.CONTACT, route: StringConst.CONTACT_PAGE),
  ];

  static List<SocialData> socialData = [
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
    ),
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
    SocialData(
      name: StringConst.WHATSAPP,
      iconData: FontAwesomeIcons.whatsapp,
      url: StringConst.WHATSAPP_URL,
    ),
    SocialData(
      name: StringConst.EMAIL,
      iconData: Icons.mail_outline,
      url: StringConst.EMAIL_URL,
    ),
  ];

  static List<String> otherTechnologies = [
    "Flutter",
    "Dart",
    "Kotlin",
    "OOP",
    "SOLID Principles",
    "BloC",
    "Getx",
    "Provider",
    "Clean Architecture",
    "RTC",
    "Docker",
    "Dio",
    "HTTP",
    "Retrofit",
    "Socket io",
    "Firebase",
    "Git",
    "Push Notifications",
    "Local Database",
    "HTML 5",
    "CSS",
  ];

  static List<ProjectItemData> recentWorks = [
    Projects.cyberTooth,
    Projects.zakatna,
    Projects.imaginaTrix,

  ];

  static List<ProjectItemData> projects = [
    Projects.cyberTooth,
    Projects.zakatna,
    Projects.imaginaTrix,
    Projects.drawFront,
  ];

  static List<NoteWorthyProjectDetails> noteworthyProjects = [

  ];

  static List<CertificationData> certificationData = [
    CertificationData(
      title: StringConst.LIFE_CYCLE,
      url: StringConst.SOFTWARE_LIFECYCLE_URL,
      image: ImagePath.SOFTWARE_LIFECYCLE_CERT,
      imageSize: 0.325,
      awardedBy: StringConst.Minnesota,
    ),
    CertificationData(
      title: StringConst.FLUTTER_CLEAN_ARCHITECTURE1,
      url: StringConst.CLEAN_ARCH1_URL,
      image: ImagePath.CLEAN_ARCH_CERT1,
      imageSize: 0.325,
      awardedBy: StringConst.UDEMY,
    ),
    CertificationData(
      title: StringConst.FLUTTER_CLEAN_ARCHITECTURE2,
      url: StringConst.CLEAN_ARCH2_URL,
      image: ImagePath.CLEAN_ARCH_CERT2,
      imageSize: 0.325,
      awardedBy: StringConst.UDEMY,
    ),
    CertificationData(
      title: StringConst.AGRICULTURAL_ENGINEER,
      url: StringConst.GRADUATION_URL,
      image: ImagePath.GRADUATION_CERT,
      imageSize: 0.325,
      awardedBy: StringConst.AL_AZHAR,
    ),
  ];

  static List<ExperienceData> experienceData = [
    ExperienceData(
      company: StringConst.COMPANY_2,
      position: StringConst.POSITION_2,
      companyUrl: StringConst.COMPANY_2_URL,
      roles: [
        StringConst.COMPANY_2_ROLE_1,
        StringConst.COMPANY_2_ROLE_2,
      ],
      location: StringConst.LOCATION_2,
      duration: StringConst.DURATION_2,
    ),
    ExperienceData(
      company: StringConst.COMPANY_1,
      position: StringConst.POSITION_1,
      companyUrl: StringConst.COMPANY_1_URL,
      roles: [
        StringConst.COMPANY_1_ROLE_1,
        StringConst.COMPANY_1_ROLE_2,
        StringConst.COMPANY_1_ROLE_3,
      ],
      location: StringConst.LOCATION_1,
      duration: StringConst.DURATION_1,
    ),
  ];
}

class Projects {


  static ProjectItemData cyberTooth = ProjectItemData(
    title: StringConst.CyberToothTitle,
    subtitle: StringConst.CyberToothSubTitle,
    platform: StringConst.CyberTooth_PLATFORMS,
    primaryColor: Color(0xff8671dd),
    image: ImagePath.cyberTooth_mockup,
    coverUrl: ImagePath.cyberTooth_cover,
    projectAssets: [
      ImagePath.cyberTooth_1,
      ImagePath.cyberTooth_2,
      ImagePath.cyberTooth_3,
      ImagePath.cyberTooth_4,
      ImagePath.cyberTooth_5,
      ImagePath.cyberTooth_6,
    ],
    category: StringConst.CyberTooth_Category,
    portfolioDescription: StringConst.CyberTooth_Description,
    isPublic: false,
    isOnPlayStore: true,
    isOnAppStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: '',
    playStoreUrl: StringConst.CyberTooth_PlayStoreURL,
    appStoreUrl: StringConst.CyberTooth_AppStoreURL,
  );
  static ProjectItemData zakatna = ProjectItemData(
    title: StringConst.ZakatnaTitle,
    subtitle: StringConst.ZakatnaSubTitle,
    platform: StringConst.Zakatna_PLATFORMS,
    primaryColor: Color(0xff38C6BD),
    image: ImagePath.zakatna_mockup,
    coverUrl: ImagePath.zakatna_cover,
    projectAssets: [
      ImagePath.zakatna_1,
      ImagePath.zakatna_2,
      ImagePath.zakatna_3,
    ],
    category: StringConst.Zakatna_Category,
    portfolioDescription: StringConst.Zakatna_Description,
    isPublic: false,
    isOnPlayStore: true,
    isOnAppStore: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: '',
    playStoreUrl: StringConst.Zakatna_PlayStoreURL,
  );
  static ProjectItemData imaginaTrix = ProjectItemData(
    title: StringConst.ImaginaTrixTitle,
    subtitle: StringConst.ImaginaTrixSubTitle,
    platform: StringConst.ImaginaTrix_PLATFORMS,
    primaryColor: Color(0xff9c64c7),
    image: ImagePath.ImaginaTrix_mockup,
    coverUrl: ImagePath.ImaginaTrix_1,

    category: StringConst.ImaginaTrix_Category,
    portfolioDescription: StringConst.ImaginaTrix_Description,
    isPublic: true,
    isOnPlayStore: false,
    isOnAppStore: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.ImaginaTrix_GitHubURL,
  );
  static ProjectItemData drawFront = ProjectItemData(
    title: StringConst.DrawTitle,
    subtitle: "",
    platform: StringConst.Draw_PLATFORMS,
    primaryColor: Color(0xffF2B413),
    image: ImagePath.Draw_mockup,
    coverUrl: ImagePath.Draw_1,
    projectAssets: [
      ImagePath.Draw_2,
    ],
    category: StringConst.Draw_Category,
    portfolioDescription: StringConst.Draw_Description,
    isPublic: false,
    isOnPlayStore: false,
    isOnAppStore: false,
    isLive: true,
    webUrl: StringConst.Draw_VideoUrl,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: "",
  );


}
