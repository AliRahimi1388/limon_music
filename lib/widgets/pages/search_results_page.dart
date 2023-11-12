import 'package:flutter/material.dart';

import '../components/appbar_text_search_field.dart';

class SearchResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Hero(
            tag: 'searchBar', // Use the same tag for Hero on both pages.
            child: Material(
              type: MaterialType.transparency,
              child: AppBarTextSearchField(
                onTapCallback: () {},
              ),
            ),
          ),
        ),
        body: Center(
          child: Text('Search Results Page Content'),
        ),
      ),
    );
  }
}
