import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/provider/bottom_navigation_bar_provider.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/screens/search_screen/bloc/search_bloc.dart';
import 'package:flutter_app_tasc/screens/search_screen/components/article_list_item.dart';
import 'package:flutter_app_tasc/screens/search_screen/components/search_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _resetFilterIfNeeded();
  }

  void _resetFilterIfNeeded() {
    var provider =
        Provider.of<BottomNavigationBarProvider>(context, listen: false);
    if (provider.currentIndex == 2) {
      if (_searchController.text.isEmpty) {
        BlocProvider.of<SearchBloc>(context, listen: false).add(SearchReset());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<SearchBloc, SearchState>(
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
                SliverAppBar(
                  backgroundColor: themeProvider.isDarkMode
                      ? Theme.of(context).scaffoldBackgroundColor
                      : AppColors.backgroundLight,
                  toolbarHeight: 70,
                  pinned: true,
                  title: SearchFieldSearchScreen(
                    onSearch: (query) {
                      context.read<SearchBloc>().add(SearchInitiated(query));
                    },
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
      ),
    );
  }
}
