import 'package:flutter/material.dart';

class PageGenerator {
  PageGenerator(this.forms);
  List<Widget> forms;

  List<String> generatePageIds() {
    return List.generate(forms.length, (index) => '$index');
  }

  List<PageInfos> generatePageInfos() {
    List<PageInfos> reForms = [];
    int _indexx = -1;
    for (var element in forms) {
      _indexx++;
      reForms.add(
        PageInfos(
          page: CustomPages(child: element),
          pageId: generatePageIds()[_indexx],
          pageName: "pageNo${generatePageIds()[_indexx]}",
        ),
      );
    }
    return reForms;
  }
}

class CustomPages extends StatelessWidget {
  const CustomPages({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}

class PageInfos {
  String pageId;
  Widget page;
  String pageName;
  PageInfos({
    required this.page,
    required this.pageId,
    required this.pageName,
  });
}
