import 'package:ouditor/modules/accounting/models/journal_entry_types_enum/journal_entry_types_enum.dart';
import 'package:ouditor/modules/accounting/models/ledger_entry_model/ledger_entry_model.dart';
import 'package:ouditor/modules/audit_trail/models/audti_log/audit_log_model.dart';

class JournalEntryModel {
  // firestore
  String documentId;
  DateTime docCreationDate;

  // audit log 
  AuditLogModel auditLog;
  List<JournalEntryModel> auditHistory;

  // data profile
  int journalEntryNumber;
  DateTime journalEntryDate;
  double journalEntryTotal;
  JournalEntryTypesEnum journalEntryType;
  List<LedgerEntryModel> ledgerEntries;

  String attachFiles;
  String memo;

  JournalEntryModel(
      {
      required this.documentId,
      required this.docCreationDate,
      required this.auditLog,
      required this.auditHistory,
      required this.journalEntryDate,
      required this.journalEntryNumber,
      required this.journalEntryType,
      required this.journalEntryTotal,
      required this.ledgerEntries,
      required this.attachFiles,
      required this.memo,
      });
}



class LedgerEntryModel {
  String accountId;
  String description;
  double amount;
  LedgerEntryTypesEnum ledgerEntryType;
  String userUID;
  bool billable;
  String classification;
  String location;

  LedgerEntryModel({
    required this.accountId,
    required this.amount,
    required this.billable,
    required this.classification,
    required this.description,
    required this.ledgerEntryType,
    required this.location,
    required this.userUID,
  });
}
