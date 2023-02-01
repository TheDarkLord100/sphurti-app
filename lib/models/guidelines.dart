class Guidelines{
  final List<String> guidelines;

  static late Guidelines generalGuidelines;

  Guidelines({
    required this.guidelines
});
  factory Guidelines.fromList(List<dynamic> list) {
    List<String> guide = [];
    for(dynamic element in list){
      guide.add(element.toString());
    }
    return Guidelines(guidelines: guide);
  }
}