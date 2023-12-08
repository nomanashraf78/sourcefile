import 'package:ouditor/models/attach_file_model/attach_file_model.dart';
import 'package:ouditor/modules/accounting/models/account_status_enum/account_status_enum.dart';
import 'package:ouditor/modules/accounting/models/account_subtypes_enum/account_subtypes_enum.dart';
import 'package:ouditor/modules/accounting/models/account_types_enum/account_types_enum.dart';
import 'package:ouditor/modules/audit_trail/models/audti_log/audit_log_model.dart';

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
  String accountName;
  String accountDescription;
  int accountNumber;

  AccountTypesEnum accountType;
  AccountSubTypesEnum accountSubType;
  AccountStatusEnum accountStatus;

  DateTime openingDate;
  double currentBalance;

  String accountMemo;
  List<AttachFileModel> attachFiles;

  AccountProfileModel({
    required this.documentId,
    required this.docCreationDate,
    required this.parentAccount,
    required this.subAccountsList,
    required this.accountType,
    required this.accountMemo,
    required this.accountSubType,
    required this.accountNumber,
    required this.accountName,
    required this.accountDescription,
    required this.openingDate,
    required this.accountStatus,
    required this.currentBalance,
    required this.auditLog,
    required this.auditHistory,
    required this.attachFiles,
  });
}
