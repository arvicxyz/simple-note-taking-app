import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/_config.dart';
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
  String _id = "";

  @override
  void initState() {
    super.initState();
    _id = widget.noteId ?? "0";
    context.read<NoteDetailsBloc>().add(NoteDetailsEvent.get(id: _id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MaterialAppBar(),
      body: SafeArea(
        child: BlocConsumer<NoteDetailsBloc, NoteDetailsState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (event) {
                event.whenOrNull(
                  delete: (id) {
                    // Delete successful, then refresh notes list
                    context.read<NoteListBloc>().add(const NoteListEvent.getAll());
                    Navigator.pop(context);
                    context.pop();
                  },
                );
              },
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
                  state.maybeWhen(
                    idle: (entity) {
                      return SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          margin: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: AppColors.accentColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            entity.note,
                            textAlign: TextAlign.center,
                            style: AppStyles.noteDetailsTextStyle,
                          ),
                        ),
                      );
                    },
                    orElse: () => const SizedBox.shrink(),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () => _dialogBuilder(context),
                style: AppStyles.defaultButtonStyle.copyWith(
                  backgroundColor: const MaterialStatePropertyAll(AppColors.deleteColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.delete,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      AppLocale.of(context).delete,
                      style: AppStyles.defaultTertiaryTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ElevatedButton(
                onPressed: () => context.pushNamed(AppRoute.noteAddEditRoute, extra: _id),
                style: AppStyles.defaultButtonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.edit,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      AppLocale.of(context).edit,
                      style: AppStyles.defaultTertiaryTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            AppLocale.of(context).deleteNote,
            style: AppStyles.dialogTitleTextStyle,
          ),
          content: Text(
            AppLocale.of(context).deleteNoteContent,
            style: AppStyles.dialogContentTextStyle,
          ),
          actions: [
            OutlinedButton(
              style: AppStyles.outlinedButtonStyle,
              onPressed: () {
                context.read<NoteDetailsBloc>().add(NoteDetailsEvent.delete(id: _id));
              },
              child: Text(
                AppLocale.of(context).yes,
                style: AppStyles.dialogActionsTextStyle,
              ),
            ),
            OutlinedButton(
              style: AppStyles.outlinedButtonStyle,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                AppLocale.of(context).no,
                style: AppStyles.dialogActionsTextStyle,
              ),
            ),
          ],
        );
      },
    );
  }
}
