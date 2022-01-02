///
//  Generated code. Do not modify.
//  source: protos/model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use personDescriptor instead')
const Person$json = const {
  '1': 'Person',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '9': 1, '10': 'id', '17': true},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'email', '17': true},
    const {'1': 'phones', '3': 4, '4': 3, '5': 11, '6': '.Person.PhoneNumber', '10': 'phones'},
    const {'1': 'uuid', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'uuid', '17': true},
  ],
  '3': const [Person_PhoneNumber$json],
  '4': const [Person_PhoneType$json],
  '8': const [
    const {'1': '_name'},
    const {'1': '_id'},
    const {'1': '_email'},
    const {'1': '_uuid'},
  ],
};

@$core.Deprecated('Use personDescriptor instead')
const Person_PhoneNumber$json = const {
  '1': 'PhoneNumber',
  '2': const [
    const {'1': 'number', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'number', '17': true},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.Person.PhoneType', '9': 1, '10': 'type', '17': true},
  ],
  '8': const [
    const {'1': '_number'},
    const {'1': '_type'},
  ],
};

@$core.Deprecated('Use personDescriptor instead')
const Person_PhoneType$json = const {
  '1': 'PhoneType',
  '2': const [
    const {'1': 'MOBILE', '2': 0},
    const {'1': 'HOME', '2': 1},
    const {'1': 'WORK', '2': 2},
  ],
};

/// Descriptor for `Person`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List personDescriptor = $convert.base64Decode('CgZQZXJzb24SFwoEbmFtZRgBIAEoCUgAUgRuYW1liAEBEhMKAmlkGAIgASgFSAFSAmlkiAEBEhkKBWVtYWlsGAMgASgJSAJSBWVtYWlsiAEBEisKBnBob25lcxgEIAMoCzITLlBlcnNvbi5QaG9uZU51bWJlclIGcGhvbmVzEhcKBHV1aWQYBSABKAlIA1IEdXVpZIgBARpqCgtQaG9uZU51bWJlchIbCgZudW1iZXIYASABKAlIAFIGbnVtYmVyiAEBEioKBHR5cGUYAiABKA4yES5QZXJzb24uUGhvbmVUeXBlSAFSBHR5cGWIAQFCCQoHX251bWJlckIHCgVfdHlwZSIrCglQaG9uZVR5cGUSCgoGTU9CSUxFEAASCAoESE9NRRABEggKBFdPUksQAkIHCgVfbmFtZUIFCgNfaWRCCAoGX2VtYWlsQgcKBV91dWlk');
@$core.Deprecated('Use addressBookDescriptor instead')
const AddressBook$json = const {
  '1': 'AddressBook',
  '2': const [
    const {'1': 'people', '3': 1, '4': 3, '5': 11, '6': '.Person', '10': 'people'},
  ],
};

/// Descriptor for `AddressBook`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addressBookDescriptor = $convert.base64Decode('CgtBZGRyZXNzQm9vaxIfCgZwZW9wbGUYASADKAsyBy5QZXJzb25SBnBlb3BsZQ==');
@$core.Deprecated('Use peopleRespDescriptor instead')
const PeopleResp$json = const {
  '1': 'PeopleResp',
  '2': const [
    const {'1': 'people', '3': 1, '4': 3, '5': 11, '6': '.Person', '10': 'people'},
  ],
};

/// Descriptor for `PeopleResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peopleRespDescriptor = $convert.base64Decode('CgpQZW9wbGVSZXNwEh8KBnBlb3BsZRgBIAMoCzIHLlBlcnNvblIGcGVvcGxl');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
