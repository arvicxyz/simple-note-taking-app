import 'package:go_router/go_router.dart';

import '../../features/_features.dart';

class AppRoute {
  static const String homePath = "/";
  static const String noteListRoute = "note-list";
  static const String noteDetailsRoute = "note-details";
  static const String noteAddEditRoute = "note-add-edit";

  static final routerConfig = GoRouter(
    initialLocation: _getInitialRoute(),
    routes: [
      GoRoute(
        name: noteListRoute,
        path: homePath,
        builder: (context, state) => const NoteListView(),
        routes: [
          GoRoute(
            name: noteDetailsRoute,
            path: '$noteDetailsRoute/:noteId',
            builder: (context, state) => NoteDetailsView(
              noteId: state.pathParameters['noteId'],
            ),
          ),
          GoRoute(
            name: noteAddEditRoute,
            path: noteAddEditRoute,
            builder: (context, state) => NoteAddEditView(
              noteId: state.extra as int?,
            ),
          ),
        ],
      ),
    ],
  );

  static String _getInitialRoute() {
    var route = homePath;
    return route;
  }
}
