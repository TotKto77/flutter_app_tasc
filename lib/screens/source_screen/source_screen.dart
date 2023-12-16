import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/screens/source_screen/bloc/source_screen_bloc.dart';
import 'package:flutter_app_tasc/screens/source_screen/components/source_grid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SourceScreen extends StatelessWidget {
  const SourceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SourceScreenBloc, SourceScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              if (state is SourceScreenLoading) ...[
                const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ],
              if (state is SourceScreenData) ...[
                SliverPadding(
                  sliver: AgencySliverGrid(sourcesList: state.sourcesList),
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 80, 0, 24),
                ),
              ],
              if (state is SourceScreenError) ...[
                const SliverFillRemaining(
                  child: Center(
                    child: Text('Error loading data'),
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
