import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../localization/_localization.dart';
import '../../../../resources/_resources.dart';
import '../../../app/app.dart';
import '../../domain/_domain.dart';
import '../blocs/_blocs.dart';

class NoteAddEditView extends StatefulWidget {
  final String? noteId;

  const NoteAddEditView({
    super.key,
    required this.noteId,
  });

  @override
  State<NoteAddEditView> createState() => _NoteAddEditViewState();
}

class _NoteAddEditViewState extends State<NoteAddEditView> {
  final _noteTextController = TextEditingController();
  final _noteFocusNode = FocusNode();

  bool _isEdit = false;
  String _id = "";

  @override
  void initState() {
    super.initState();
    if (widget.noteId != null) {
      _isEdit = true;
      _id = widget.noteId!;

      final bloc = context.read<NoteAddEditBloc>();
      bloc.add(NoteAddEditEvent.get(id: _id));
      bloc.state.whenOrNull(
        idle: (entity) {
          _noteTextController.text = entity.note;
        },
      );
    } else {
      _noteFocusNode.requestFocus();
    }
  }

  @override
  void dispose() {
    _noteTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MaterialAppBar(
        title: Text(
          _isEdit ? AppLocale.of(context).editNote : AppLocale.of(context).addNote,
          style: AppStyles.appBarTitleTextStyle,
        ),
      ),
      body: SafeArea(
        child: BlocConsumer<NoteAddEditBloc, NoteAddEditState>(
          // Listener
          listener: (context, state) {
            state.whenOrNull(
              success: (event) {
                event.whenOrNull(
                  add: (entity) {
                    // Add successful, refresh notes list
                    context.read<NoteListBloc>().add(const NoteListEvent.getAll());
                    _noteFocusNode.unfocus();
                    Future.delayed(const Duration(milliseconds: 200)).then(
                      (value) => context.pop(),
                    );
                  },
                  update: (id, entity) {
                    // Update successful, refresh selected note and notes list
                    context.read<NoteDetailsBloc>().add(NoteDetailsEvent.get(id: id));
                    context.read<NoteListBloc>().add(const NoteListEvent.getAll());
                    Future.delayed(const Duration(milliseconds: 200)).then(
                      (value) => context.pop(),
                    );
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
          // Builder
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
                      _noteTextController.text = _isEdit ? entity.note : "";
                      return SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          margin: const EdgeInsets.only(
                            left: 24,
                            top: 24,
                            right: 24,
                            bottom: 80,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.textFieldColor,
                            border: Border.all(color: AppColors.primaryColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextField(
                            controller: _noteTextController,
                            focusNode: _noteFocusNode,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            minLines: 1,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center,
                            style: AppStyles.noteAddEditTextStyle,
                            decoration: InputDecoration(
                              hintText: AppLocale.of(context).writeYourNote,
                              hintStyle: AppStyles.noteAddEditHintTextStyle,
                              border: InputBorder.none,
                            ),
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
      floatingActionButton: BlocBuilder<NoteAddEditBloc, NoteAddEditState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const SizedBox.shrink(),
            orElse: () {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      final bloc = context.read<NoteAddEditBloc>();
                      final note = _noteTextController.text.trim();
                      if (note.isEmpty) {
                        bloc.add(
                          NoteAddEditEvent.invokeError(
                            errorMessage: AppLocale.of(context).errorEmptyNote,
                          ),
                        );
                        return;
                      }
                      if (_isEdit) {
                        _resetTextFields();
                        bloc.add(
                          NoteAddEditEvent.update(
                            id: _id,
                            entity: bloc.state.maybeWhen(
                              idle: (entity) => entity.copyWith(
                                note: note,
                              ),
                              orElse: () => NoteEntity.empty(),
                            ),
                          ),
                        );
                      } else {
                        _resetTextFields();
                        bloc.add(
                          NoteAddEditEvent.add(
                            entity: NoteEntity.empty().copyWith(
                              note: note,
                            ),
                          ),
                        );
                      }
                    },
                    style: AppStyles.defaultButtonStyle,
                    child: Text(
                      AppLocale.of(context).save,
                      style: AppStyles.defaultTertiaryTextStyle,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _resetTextFields() {
    _noteTextController.clear();
    _noteFocusNode.unfocus();
  }
}
