import 'package:go_router/go_router.dart';

import '../../features/_features.dart';

class AppRoute {
  static const String noteListRoute = "/note-list";
  static const String noteDetailsRoute = "/note-details";
  static const String noteAddEditRoute = "/note-add-edit";

  static final routerConfig = GoRouter(
    initialLocation: _getInitialRoute(),
    routes: [
      GoRoute(
        path: noteListRoute,
        builder: (context, state) => const NoteListView(),
      ),
      GoRoute(
        path: "$noteDetailsRoute/:noteId",
        builder: (context, state) =>
            NoteDetailsView(id: (state.pathParameters['noteId'] ?? '0') as int),
      ),
      GoRoute(
        path: noteAddEditRoute,
        builder: (context, state) => const NoteAddEditView(),
      ),
    ],
  );

  static String _getInitialRoute() {
    var route = noteListRoute;
    return route;
  }
}
