import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../localization/_localization.dart';
import '../../../app/app.dart';
import '../blocs/_blocs.dart';

class NoteDetailsView extends StatelessWidget {
  final String? id;

  const NoteDetailsView({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MaterialAppBar(),
      body: SafeArea(
        child: BlocConsumer<NoteBloc, NoteState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {},
              error: (errorMessage) {
                var message = AppLocale.of(context).errorServerAccess;
                if (errorMessage.isNotEmpty) {
                  message = errorMessage;
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  AppWidgets.errorSnackBar(context, message),
                );
              },
            );
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state.maybeWhen(
                loading: () => true,
                orElse: () => false,
              ),
              child: Stack(
                children: [
                  const SingleChildScrollView(
                    child: Column(
                      children: [],
                    ),
                  ),
                  state.maybeWhen(
                    loading: () => const Center(child: AppWidgets.loadingIndicator),
                    orElse: () => const SizedBox.shrink(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
