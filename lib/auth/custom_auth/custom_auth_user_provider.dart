import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class JetCopyAuthUser {
  JetCopyAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<JetCopyAuthUser> jetCopyAuthUserSubject =
    BehaviorSubject.seeded(JetCopyAuthUser(loggedIn: false));
Stream<JetCopyAuthUser> jetCopyAuthUserStream() => jetCopyAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
