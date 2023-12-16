import 'package:ouditor/models/attach_file_model/attach_file_model.dart';
import 'package:ouditor/modules/accounting/models/account_status_enum/account_status_enum.dart';
import 'package:ouditor/modules/accounting/models/account_subtypes_enum/account_subtypes_enum.dart';
import 'package:ouditor/modules/accounting/models/account_types_enum/account_types_enum.dart';
import 'package:ouditor/modules/audit_trail/models/audit_log/audit_log_model.dart';

class AccountProfileModel {
  // firestore
  String documentId;
  DateTime docCreationDate;

  // data structure
  String parentAccount;
  List<String> subAccountsList;

  // audit log
  AuditLogModel auditLog;
  List<AccountProfileModel> auditHistory;

  // data profile
  int accountNumber;
  String accountName;
  String accountDescription;
  AccountTypesEnum accountType;
  AccountSubTypesEnum accountSubType;
  AccountStatusEnum accountStatus;
  DateTime lastUpdateDate;
  double currentBalance;

  // reference
  String memo;
  String additionalInfo;
  List<AttachFileModel> attachFiles;

  AccountProfileModel({
    required this.documentId,
    required this.docCreationDate,
    required this.parentAccount,
    required this.subAccountsList,
    required this.auditLog,
    required this.auditHistory,
    required this.accountNumber,
    required this.accountName,
    required this.accountDescription,
    required this.accountType,
    required this.accountSubType,
    required this.accountStatus,
    required this.lastUpdateDate,
    required this.currentBalance,
    required this.memo,
    required this.additionalInfo,
    required this.attachFiles,
  });
  // update currentBalance
  void accountBalanceUpdate() {}

  void accountStatusUpdate() {}

  // audit log
  void createAuditLog() {}
  void restoreFromAuditLog() {}
  void deleteAuditLog() {}

// EditingController
  void fromEditingController() {}
  void modifyWithEditingController() {}

  // serialization
  void fromJson() {}
  void toJson() {}
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////
import 'package:ouditor/modules/accounting/models/journal_entry_types_enum/journal_entry_types_enum.dart';
import 'package:ouditor/modules/accounting/models/ledger_entry_model/ledger_entry_model.dart';
import 'package:ouditor/modules/audit_trail/models/audit_log/audit_log_model.dart';

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
  String additionalInfoDocId;
  List<LedgerEntryModel> ledgerEntries;

  String attachFiles;
  String memo;

  JournalEntryModel({
    required this.documentId,
    required this.docCreationDate,
    required this.auditLog,
    required this.auditHistory,
    required this.journalEntryDate,
    required this.journalEntryNumber,
    required this.journalEntryType,
    required this.additionalInfoDocId,
    required this.journalEntryTotal,
    required this.ledgerEntries,
    required this.attachFiles,
    required this.memo,
  });
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
import 'package:ouditor/modules/accounting/models/ledger_entry_type_enum/ledger_entry_types_enum.dart';

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
