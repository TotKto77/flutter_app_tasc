import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/provider/bottom_navigation_bar_provider.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/screens/source_screen/bloc/source_screen_bloc.dart';
import 'package:flutter_app_tasc/screens/source_screen/components/alert_dialog_source.dart';
import 'package:flutter_app_tasc/screens/source_screen/components/search_field.dart';
import 'package:flutter_app_tasc/screens/source_screen/components/shimer_screen_source/shimer.dart';
import 'package:flutter_app_tasc/screens/source_screen/components/source_grid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class SourceScreen extends StatefulWidget {
  const SourceScreen({Key? key}) : super(key: key);

  @override
  State<SourceScreen> createState() => _SourceScreenState();
}

class _SourceScreenState extends State<SourceScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _resetFilterIfNeeded();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _resetFilterIfNeeded();
  }

  void _resetFilterIfNeeded() {
    var provider =
        Provider.of<BottomNavigationBarProvider>(context, listen: false);
    if (provider.currentIndex == 1) {
      if (_searchController.text.isEmpty) {
        BlocProvider.of<SourceScreenBloc>(context, listen: false)
            .add(SourceScreenResetFilter());
      }
    }
  }

// Очистка контроллера
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<SourceScreenBloc, SourceScreenState>(
          listener: (context, state) {},
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                if (state is SourceScreenLoading) ...[
                  const SliverPadding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 50, 16, 0),
                    sliver: SliverToBoxAdapter(child: SimeerTextfield()),
                  ),
                  const SliverPadding(
                    padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                    sliver: ShimerSource(),
                  ),
                ],
                if (state is SourceScreenData) ...[
                  SliverPadding(
                    padding: const EdgeInsetsDirectional.only(bottom: 16),
                    sliver: SliverAppBar(
                      toolbarHeight: 70,
                      backgroundColor: themeProvider.isDarkMode
                          ? AppClor.background
                          : Colors.white,
                      pinned: true,
                      title: SearchField(
                        themeProvider: themeProvider,
                        controller: _searchController,
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 24),
                    sliver: AgencySliverGrid(sourcesList: state.sourcesList),
                  ),
                ],
                if (state is SourceScreenError) ...[
                  const SliverToBoxAdapter(
                    child: AlertDialogConectionErrorSource(),
                  ),
                ],
              ],
            );
          },
        ),
      ),
      floatingActionButton: _buildResetButton(context),
    );
  }

  Widget _buildResetButton(BuildContext context) {
    return BlocBuilder<SourceScreenBloc, SourceScreenState>(
      builder: (context, state) {
        if (state is SourceScreenData && state.isFilterApplied) {
          return FloatingActionButton(
            onPressed: () {
              BlocProvider.of<SourceScreenBloc>(context)
                  .add(SourceScreenResetFilter());
              _searchController.clear();
            },
            child: const Icon(Icons.restart_alt),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
