import 'package:flutter/material.dart';

import '../animation/custom_page_route.dart';
import '../pages/search_results_page.dart';
import 'appbar_text_search_field.dart';

class DiscoverMusic extends StatelessWidget {
  const DiscoverMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome', style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 5),
          Text(
            'Enjoy your Music',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Hero(
            tag: "searchField",
            child: AppBarTextSearchField(
              onTapCallback: () {
                // Navigate to the search results page when the TextFormField is tapped.
                Navigator.of(context)
                    .push(CustomPageRoute(page: SearchResultsPage()));
              },
            ),
          )
        ],
      ),
    );
  }
}
