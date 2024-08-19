import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class CageManagerAuthUser {
  CageManagerAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<CageManagerAuthUser> cageManagerAuthUserSubject =
    BehaviorSubject.seeded(CageManagerAuthUser(loggedIn: false));
Stream<CageManagerAuthUser> cageManagerAuthUserStream() =>
    cageManagerAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
