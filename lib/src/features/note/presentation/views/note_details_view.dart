import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../localization/_localization.dart';
import '../../../../resources/_resources.dart';
import '../../../app/app.dart';
import '../blocs/_blocs.dart';

class NoteDetailsView extends StatefulWidget {
  final String? noteId;

  const NoteDetailsView({
    super.key,
    required this.noteId,
  });

  @override
  State<NoteDetailsView> createState() => _NoteDetailsViewState();
}

class _NoteDetailsViewState extends State<NoteDetailsView> {
  @override
  void initState() {
    super.initState();
    final id = int.tryParse(widget.noteId ?? '0');
    context.read<NoteDetailsBloc>().add(NoteDetailsEvent.get(id: id!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MaterialAppBar(),
      body: SafeArea(
        child: BlocConsumer<NoteDetailsBloc, NoteDetailsState>(
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
                fit: StackFit.expand,
                children: [
                  SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: state.maybeWhen(
                      idle: (entity) {
                        return Container(
                          padding: const EdgeInsets.all(24),
                          margin: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Text(
                            entity.note,
                            textAlign: TextAlign.center,
                            style: AppStyles.defaultTextStyle.copyWith(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        );
                      },
                      orElse: () => const SizedBox.shrink(),
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
