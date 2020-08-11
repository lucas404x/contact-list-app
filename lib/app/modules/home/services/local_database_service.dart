import '../data/interfaces/local_storage.dart';
import '../data/local_database.dart';
import '../models/contact_model.dart';

class LocalDatabaseService implements ILocalStorage {
  LocalDatabase _localDatabase;

  LocalDatabaseService(this._localDatabase);

  @override
  Future<int> deleteContact(contact) =>
      _localDatabase.contactDao.deleteContact(contact);

  @override
  Future<List<ContactModel>> getAllContactsOrderByAZ() async {
    List<ContactTableData> contactsTmp;
    List<ContactModel> contacts;

    contactsTmp = await _localDatabase.contactDao.getAllContacts();
    contacts = List<ContactModel>.from(
        contactsTmp.map((e) => ContactModel.fromMap(e.toJson())));

    contacts.sort((a, b) => a.name.compareTo(b.name));

    return contacts;
  }

  @override
  Future<ContactModel> getContact(contact) async {
    ContactTableData contactTableData;
    ContactModel contactModel;

    contactTableData = await _localDatabase.contactDao.getContact(contact);
    contactModel = ContactModel.fromMap(contactTableData.toJson());

    return contactModel;
  }

  @override
  Future<int> insertContact(contact) =>
      _localDatabase.contactDao.deleteContact(contact);

  @override
  Future<int> updateContact(contact) =>
      _localDatabase.contactDao.updateContact(contact);
}
