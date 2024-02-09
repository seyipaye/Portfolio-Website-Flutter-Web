class RecentWork {
  final String image, category, title, preview;
  final int id;

  RecentWork({
    required this.id,
    required this.image,
    required this.category,
    required this.title,
    required this.preview,
  });
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "FastLink",
    category: "Backend Developer",
    image: "assets/images/fast_link_logo_2.png",
    preview: "assets/images/work_1.png",
  ),
  //
];
