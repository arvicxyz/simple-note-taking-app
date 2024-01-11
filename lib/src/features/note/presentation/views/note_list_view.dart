import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/_config.dart';
import '../../../../localization/_localization.dart';
import '../../../../resources/_resources.dart';
import '../../../app/app.dart';
import '../../note.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MaterialAppBar(
        title: Text(
          AppLocale.of(context).appTitle,
          style: const TextStyle(
            color: AppColors.primaryTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        leading: const SizedBox.shrink(),
      ),
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
                  state.maybeWhen(
                    idle: (entityList) {
                      if (entityList.isNotEmpty) {
                        return ListView.builder(
                          padding: const EdgeInsets.only(top: 4, bottom: 100),
                          itemCount: entityList.length,
                          itemBuilder: (context, index) {
                            final item = entityList[index];
                            return Dismissible(
                              key: UniqueKey(),
                              direction: DismissDirection.horizontal,
                              onDismissed: (direction) {
                                if (direction == DismissDirection.endToStart) {
                                  context.read<NoteBloc>().add(NoteEvent.delete(id: item.id));
                                }
                              },
                              confirmDismiss: (direction) async {
                                if (direction == DismissDirection.endToStart) {
                                  return true;
                                }
                                return false;
                              },
                              background: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Icon(
                                      Icons.keyboard_double_arrow_left_outlined,
                                      color: Colors.redAccent,
                                    ),
                                    Text(
                                      AppLocale.of(context).delete,
                                      style: const TextStyle(
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              child: Card(
                                margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                color: AppColors.primaryColor,
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 4,
                                    horizontal: 16,
                                  ),
                                  title: Text(
                                    item.note,
                                    style: const TextStyle(
                                      color: AppColors.tertiaryTextColor,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            AppAssets.images.imgCompanyLogo.image(height: 200),
                            Text(
                              AppLocale.of(context).emptyNoteListText,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: AppColors.secondaryTextColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 200),
                          ],
                        );
                      }
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.accentColor,
        onPressed: () => context.push(AppRoute.noteAddEditRoute),
        child: AppAssets.icons.icAdd.svg(height: 30),
      ),
    );
  }
}
