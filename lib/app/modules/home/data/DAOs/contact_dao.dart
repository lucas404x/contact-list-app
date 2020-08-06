import 'package:contact_list/app/modules/home/models/contact_model.dart';
import 'package:moor/moor.dart';

import '../local_database.dart';
import '../tables/contact_table.dart';

part 'contact_dao.g.dart';

@UseDao(tables: [ContactTable])
class ContactDao extends DatabaseAccessor<LocalDatabase>
    with _$ContactDaoMixin {
  ContactDao(LocalDatabase attachedDatabase) : super(attachedDatabase);

  Stream<List<ContactTableData>> getAllContacts() =>
      select(contactTable).watch();

  Future<ContactTableData> getContact(ContactModel contactModel) =>
      (select(contactTable)..where((tbl) => tbl.id.equals(contactModel.id)))
          .getSingle();

  Future<int> insertContact(ContactModel contactModel) =>
      into(contactTable).insert(ContactTableCompanion(
          id: Value(contactModel.id),
          name: Value(contactModel.name),
          email: Value(contactModel.email),
          photo: Value(contactModel.photo),
          number: Value(contactModel.number)));

  Future<int> updateContact(ContactModel contactModel) =>
      (update(contactTable)..where((tbl) => tbl.id.equals(contactModel.id)))
          .write(ContactTableCompanion(
              id: Value(contactModel.id),
              name: Value(contactModel.name),
              email: Value(contactModel.email),
              photo: Value(contactModel.photo),
              number: Value(contactModel.number)));

  Future<int> deleteContact(ContactModel contactModel) =>
      (delete(contactTable)..where((tbl) => tbl.id.equals(contactModel.id)))
          .go();
}
