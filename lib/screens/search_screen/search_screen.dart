import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/screens/search_screen/bloc/search_bloc.dart';
import 'package:flutter_app_tasc/screens/search_screen/components/search_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: BlocConsumer<SearchBloc, SearchState>(
        listener: (context, state) {
          if (state is SearchError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
                sliver: SliverToBoxAdapter(
                  child: SearchFieldSearchScreen(
                    onSearch: (query) {
                      context.read<SearchBloc>().add(SearchInitiated(query));
                    },
                    themeProvider: themeProvider,
                  ),
                ),
              ),
              if (state is SearchLoading)
                const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator())),
              if (state is SearchLoaded)
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => ListTile(
                      title: Text(
                          state.searchArticlesList[index].title ?? 'No title'),
                      subtitle: Text(
                          state.searchArticlesList[index].description ??
                              'No description'),
                    ),
                    childCount: state.searchArticlesList.length,
                  ),
                ),
              if (state is SearchError)
                const SliverFillRemaining(
                    child: Center(child: Text('Error loading search results'))),
            ],
          );
        },
      ),
    );
  }
}
