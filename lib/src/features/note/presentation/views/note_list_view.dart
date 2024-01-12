import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/_config.dart';
import '../../../../localization/_localization.dart';
import '../../../../resources/_resources.dart';
import '../../../app/app.dart';
import '../blocs/_blocs.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MaterialAppBar(
        title: Text(
          AppLocale.of(context).appTitle,
          style: AppStyles.appBarTitleTextStyle,
        ),
        leading: const SizedBox.shrink(),
      ),
      body: SafeArea(
        child: BlocConsumer<NoteListBloc, NoteListState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (event) {
                event.whenOrNull(
                  delete: (id) {
                    // Delete successful, then refresh notes list
                    context.read<NoteListBloc>().add(const NoteListEvent.getAll());
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
                    idle: (entityList) {
                      if (entityList.isNotEmpty) {
                        return ListView.builder(
                          padding: const EdgeInsets.only(top: 8, bottom: 80),
                          itemCount: entityList.length,
                          itemBuilder: (context, index) {
                            final item = entityList[index];
                            return InkWell(
                              onTap: () => context.pushNamed(
                                AppRoute.noteDetailsRoute,
                                pathParameters: {'noteId': item.id.toString()},
                              ),
                              child: Dismissible(
                                key: UniqueKey(),
                                direction: DismissDirection.horizontal,
                                onDismissed: (direction) {
                                  if (direction == DismissDirection.endToStart) {
                                    context.read<NoteListBloc>().add(
                                          NoteListEvent.delete(id: item.id),
                                        );
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
                                        Icons.delete_outlined,
                                        color: AppColors.deleteColor,
                                      ),
                                      Text(
                                        AppLocale.of(context).delete,
                                        style: const TextStyle(
                                          color: AppColors.deleteColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                child: Card(
                                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  elevation: 1.5,
                                  color: AppColors.accentColor,
                                  child: ListTile(
                                    titleAlignment: ListTileTitleAlignment.top,
                                    contentPadding: const EdgeInsets.all(16),
                                    title: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            item.note,
                                            style: AppStyles.noteListTextStyle,
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        const ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(3)),
                                          child: SizedBox(
                                            width: 3,
                                            height: 20,
                                            child: ColoredBox(
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ),
                                      ],
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
                              style: AppStyles.infoTextStyle,
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
        backgroundColor: AppColors.buttonColor,
        onPressed: () => context.pushNamed(AppRoute.noteAddEditRoute),
        child: AppAssets.icons.icAdd.svg(height: 16),
      ),
    );
  }
}
