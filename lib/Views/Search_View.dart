import 'package:flutter/material.dart';

import 'widget/search_view_body.dart';

class search_View extends StatelessWidget {
  const search_View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: search_View_Body(),
    );
  }
}
