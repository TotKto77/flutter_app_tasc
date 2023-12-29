import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/screens/search_screen/bloc/search_bloc.dart';
import 'package:flutter_app_tasc/screens/search_screen/components/article_list_item.dart';
import 'package:flutter_app_tasc/screens/search_screen/components/search_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
                  //
                  //строка поиска
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
                SearchResultsList(
                  searchResults: state.searchArticlesList,
                  themeProvider: themeProvider,
                ),
              if (state is SearchError)
                SliverFillRemaining(
                    child: Center(
                        child: Text(
                  AppLocalizations.of(context)?.errorloading ?? '',
                ))),
            ],
          );
        },
      ),
    );
  }
}
