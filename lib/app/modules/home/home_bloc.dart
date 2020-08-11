import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

import 'models/contact_model.dart';
import 'services/local_database_service.dart';

class HomeBloc extends BlocBase {
  LocalDatabaseService _localDatabaseService;
  List<ContactModel> _contacts;

  HomeBloc(this._localDatabaseService) {
    _init();
  }

  final _contactData = BehaviorSubject<List<ContactModel>>.seeded([]);
  final _contactObserver = StreamController();

  Stream get contactDataOut => _contactData.stream;
  Sink get contactDataInp => _contactObserver.sink;

  _init() {
    _contactObserver.stream.listen(_updateContactList);
    _updateContactList(null);
  }

  Future<void> _updateContactList(_) async {
    _contacts = await _localDatabaseService.getAllContactsOrderByAZ();
    _contactData.sink.add(_contacts);
  }

  @override
  void dispose() {
    super.dispose();
    _contactData.close();
    _contactObserver.close();
  }
}
