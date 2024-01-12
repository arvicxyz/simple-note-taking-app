import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../localization/_localization.dart';
import '../../../../resources/_resources.dart';
import '../../../app/app.dart';
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

  @override
  void initState() {
    super.initState();
    if (widget.noteId != null) {
      _isEdit = true;
      var id = int.parse(widget.noteId!);
      context.read<NoteDetailsBloc>().add(NoteDetailsEvent.get(id: id));
    }
    _noteFocusNode.requestFocus();
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
                            color: AppColors.textFieldColor,
                            border: Border.all(color: AppColors.primaryColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextField(
                            controller: _isEdit
                                ? (_noteTextController..text = entity.note)
                                : _noteTextController,
                            focusNode: _noteFocusNode,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            minLines: 1,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center,
                            scrollPadding: const EdgeInsets.all(24),
                            style: AppStyles.defaultPrimaryTextStyle.copyWith(
                              fontSize: 24,
                            ),
                            decoration: InputDecoration(
                              hintText: "Type your note...",
                              hintStyle: AppStyles.defaultSecondaryTextStyle.copyWith(
                                fontSize: 24,
                              ),
                              border: InputBorder.none,
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
