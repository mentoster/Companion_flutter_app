class StoryModel {
  String previewImageUrl;
  List<String> imagesUrl;
  String title;
  String textTitle;
  String description;
  String date;
  bool viewed;
  StoryModel({
    required this.previewImageUrl,
    required this.imagesUrl,
    required this.title,
    required this.textTitle,
    required this.description,
    required this.date,
    required this.viewed,
  });
}
